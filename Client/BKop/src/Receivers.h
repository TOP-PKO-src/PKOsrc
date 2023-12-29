#pragma once

class CNetIF;
class CGroundObject;
enum CChannelChatMgr::eChannel;

class CReceiver
{
	friend CNetIF;
public:
	CReceiver(CNetIF *pNet,CPlayer *player);
	~CReceiver(void);

private:
	void OnMessageHandle(dbc::RPacket& recvbuf);

	void ResetAllView();														//进入地图后初始化所有信息
	void RefreshAllView();														//进入地图后刷新所有信息
	void RefreshMapPosition();													//角色坐标更新
	void RefreshRoleAttribute();												//角色属性更新
	void RefreshRolePacket();													//角色包裹更新
	void RefreshRoleList(CRoleObject* pRoleObject,bool bAppear);				//角色属性更新
	void RefreshRolePosition(CRoleObject* pRoleObject);							//角色位置更新
	void RefreshGroundItemList(CGroundObject* pGroundItem,bool bAppear);		//地面物品更新
	void RefreshChat(CChannelChatMgr::eChannel channel);						//聊天内容更新



	void OnGetLoginKey(dbc::RPacket& pk);	//登陆帐号服务器收到密匙的信息
	void OnCreateCharacter(dbc::RPacket& pk);
	void OnDeleteCharacter(dbc::RPacket& pk);
	void OnLogin(dbc::RPacket& pk);
	void OnError(dbc::RPacket& pk);
	void OnEnterMap(dbc::RPacket& pk);
	void OnAction(dbc::RPacket& pk);
	void SomethingAppear(dbc::RPacket& pk);
	void SomethingDisappear(dbc::RPacket& pk);
	void ItemAppear(dbc::RPacket& pk);
	void ItemDisappear(dbc::RPacket& pk);
	void SynAttribute(dbc::RPacket& pk);

	void Chat_PrivateChannel(dbc::RPacket& pk);
	void Chat_WorldChannel(dbc::RPacket& pk);
	void Chat_TradeChannel(dbc::RPacket& pk);
	void Chat_TeamChannel(dbc::RPacket& pk);
	void Chat_PublishChannel(dbc::RPacket& pk);
	void Chat_SightChannel(dbc::RPacket& pk);
	void Chat_GuildChannel(dbc::RPacket& pk);
	void Chat_SystemChannel(dbc::RPacket& pk);

	void OnGetCharacterInfo(dbc::RPacket& pk);


private:
	CNetIF *m_pNet;
	CPlayer *m_pPlayer;

};
