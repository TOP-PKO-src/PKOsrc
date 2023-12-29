#pragma once

struct lua_State;

class CConnectKey
{
public:
	CConnectKey(void);
	~CConnectKey(void);
    void InitNoiseKey(int noise);
	void SetLoginKey(CString loginKey);
	void SetKey(const char *key,int nEncoder);

	CString GetLoginKey();
	int GetEncoder();
	int GetKeyLength();
	void Encrypt(char *content,DWORD len);
	void Decrypt(char *content,DWORD len);
	void ResetKey();

private:
	CString m_LoginKey;
	char m_Key[12];
    char m_szSendKey[4];
    char m_szRecvKey[4];
	int m_KeyLength;
	int m_nEncoder;
	lua_State* m_rLvm;
	lua_State* m_sLvm;
};
