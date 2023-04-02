package kr.or.ddit.service;

import kr.or.ddit.dao.EmailDAOImpl;
import kr.or.ddit.dao.IEmailDAO;
import kr.or.ddit.vo.EmailVO;

public class EmailServiceImpl implements IEmailService {
	private IEmailDAO dao;
	private static IEmailService service;

	private EmailServiceImpl() {
		dao = EmailDAOImpl.getInstance();
	}

	public static IEmailService getInstance() {
		if (service == null)
			service = new EmailServiceImpl();
		return service;
	}

	@Override
	public int insertMail(EmailVO vo) {
		return dao.insertMail(vo);
	}

}
