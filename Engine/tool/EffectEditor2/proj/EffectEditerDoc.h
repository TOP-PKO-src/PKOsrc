// EffectEditerDoc.h :  CEffectEditerDoc ��Ľӿ�
//


#pragma once

class CEffectEditerDoc : public CDocument
{
protected: // �������л�����
	CEffectEditerDoc();
	DECLARE_DYNCREATE(CEffectEditerDoc)

// ����
public:

// ����
public:

// ��д
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);

// ʵ��
public:
	virtual ~CEffectEditerDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// ���ɵ���Ϣӳ�亯��
protected:
	DECLARE_MESSAGE_MAP()
};


