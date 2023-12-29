#pragma once

class CPrivateRivalMgr
{
public:
	struct sRivalData
	{
		CString strName;
		DWORD dwInCounts;
		DWORD dwOutCounts;
		CStdioFile *pFile;
		bool bFlashColor;					//名字是否需要闪动
		DWORD dwStartFlashTick;				//名字闪动启始Tick
	};

	CPrivateRivalMgr(CPlayer *pPlayer);
	~CPrivateRivalMgr(void);

	void OnRivalMessage(CString strRivalName,bool bOutMessage);
	bool MoveToBegin();
	bool MoveToNext();
	sRivalData* GetCurRival();
	CString GetCurRivalName();
	DWORD GetCurRivalInCounts();
	DWORD GetCurRivalOutCounts();
	DWORD GetTotalInCounts();
	DWORD GetTotalOutCounts();
	void Clear();
	bool IsRefreshRival();
	sRivalData* FindRival(CString strRivalName);
	void Remove(sRivalData* pRival);
	bool hasRival(sRivalData *pRival);

	static COLORREF GetShowColor(sRivalData *pRivalData);
	static void EnableFlashColor(sRivalData *pRivalData,bool bFlash);

private:
	void EnableFlashColor(bool bFlash);

private:
	CList<sRivalData*,sRivalData*> m_RivalList;
	DWORD m_dwTotalInCounts;
	DWORD m_dwTotalOutCounts;
	POSITION m_Pos;
	bool m_bRivalChangeFlag;
	CPlayer *m_pPlayer;
};
