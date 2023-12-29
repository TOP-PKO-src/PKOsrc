#include "StdAfx.h"
#include "Algo.h"
#include ".\connectkey.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

short g_sKeyData = short(g_nClientVersion * g_nClientVersion * 0x1232222);
char g_szSendKey[4];
char g_szRecvKey[4];

extern void init_Noise( int nNoise, char szKey[4] );
extern bool encrypt_Noise(char szKey[4], char* src, unsigned int src_len);
extern bool decrypt_Noise(char szkey[4], char* src, unsigned int src_len);





CConnectKey::CConnectKey(void)
{
	m_rLvm = init_lua();
	m_sLvm = init_lua();
	load_luc(m_rLvm, "apple.luc");
	load_luc(m_sLvm, "apple.luc");
	load_luc(m_rLvm, "pear.luc");
	load_luc(m_sLvm, "pear.luc");
	ResetKey();
}

CConnectKey::~CConnectKey(void)
{
	exit_lua(m_sLvm);
	exit_lua(m_rLvm);
}

void CConnectKey::InitNoiseKey(int noise)
{
    init_Noise(noise, m_szSendKey);
    init_Noise(noise, m_szRecvKey);
}

void CConnectKey::SetLoginKey(CString loginKey)
{
	m_LoginKey=loginKey;
}

CString CConnectKey::GetLoginKey()
{
	return m_LoginKey;
}

void CConnectKey::SetKey(const char *key,int nEncoder)
{
	m_nEncoder=nEncoder;
	m_KeyLength=(int)((strlen(key)<sizeof(m_Key)-1)?strlen(key):sizeof(m_Key)-1);
	memcpy(m_Key,key,m_KeyLength);
	for (int i=0;i<m_KeyLength;i++)
	{
		lua_getglobal(m_rLvm, "apple_allot");
		lua_pushnumber(m_rLvm, m_Key[i]);
		lua_pushnumber(m_rLvm, i);
		lua_call(m_rLvm, 2, 0);
		lua_getglobal(m_sLvm, "apple_allot");
		lua_pushnumber(m_sLvm, m_Key[i]);
		lua_pushnumber(m_sLvm, i);
		lua_call(m_sLvm, 2, 0);
	}
}

int CConnectKey::GetEncoder()
{
	return m_nEncoder;
}

int CConnectKey::GetKeyLength()
{
	return m_KeyLength;
}

void CConnectKey::Encrypt(char *content,DWORD len)
{
#if NET_PROTOCOL_ENCRYPT
	encrypt_Noise( m_szSendKey, content, len );

	//lua_getglobal(g_sLvm, "encryptNoise");
	//lua_pushlightuserdata(g_sLvm, (void *)g_szSendKey);
	//lua_pushlightuserdata(g_sLvm, (void *)ciphertext);
	//lua_pushnumber(g_sLvm, len);
	//lua_pcall(g_sLvm, 3, 0);
	//lua_settop(g_sLvm, 0);
#endif

	lua_getglobal(m_sLvm, "apple_eat2");
	lua_pushlightuserdata(m_sLvm, (void *)content);
	lua_pushnumber(m_sLvm, len);
	lua_pushboolean(m_sLvm, true);
	lua_call(m_sLvm, 3, 0);
}

void CConnectKey::Decrypt(char *content,DWORD len)
{
	lua_getglobal(m_rLvm, "apple_eat2");
	lua_pushlightuserdata(m_rLvm, (void *)content);
	lua_pushnumber(m_rLvm, len);
	lua_pushboolean(m_rLvm, false);
	lua_call(m_rLvm, 3, 0);

#if NET_PROTOCOL_ENCRYPT
	//lua_getglobal(g_sLvm, "decryptNoise");
	//lua_pushlightuserdata(g_sLvm, (void *)g_szRecvKey);
	//lua_pushlightuserdata(g_sLvm, (void *)ciphertext);
	//lua_pushnumber(g_sLvm, len);
	//lua_pcall(g_sLvm, 3, 0);
	//lua_settop(g_sLvm, 0);
	decrypt_Noise( m_szRecvKey, content, len );
#endif
}

void CConnectKey::ResetKey()
{
	ZeroMemory(m_Key,sizeof(m_Key));
	m_nEncoder=0;
}
