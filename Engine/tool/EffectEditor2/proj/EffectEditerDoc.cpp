// EffectEditerDoc.cpp :  CEffectEditerDoc ���ʵ��
//

#include "stdafx.h"
#include "EffectEditer.h"

#include "EffectEditerDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CEffectEditerDoc

IMPLEMENT_DYNCREATE(CEffectEditerDoc, CDocument)

BEGIN_MESSAGE_MAP(CEffectEditerDoc, CDocument)
END_MESSAGE_MAP()


// CEffectEditerDoc ����/����

CEffectEditerDoc::CEffectEditerDoc()
{
	// TODO: �ڴ����һ���Թ������

}

CEffectEditerDoc::~CEffectEditerDoc()
{
}

BOOL CEffectEditerDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: �ڴ�������³�ʼ������
	// (SDI �ĵ������ø��ĵ�)

	return TRUE;
}




// CEffectEditerDoc ���л�

void CEffectEditerDoc::Serialize(CArchive& ar)
{
	if (ar.IsStoring())
	{
		// TODO: �ڴ���Ӵ洢����
	}
	else
	{
		// TODO: �ڴ���Ӽ��ش���
	}
}


// CEffectEditerDoc ���

#ifdef _DEBUG
void CEffectEditerDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CEffectEditerDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG


// CEffectEditerDoc ����
