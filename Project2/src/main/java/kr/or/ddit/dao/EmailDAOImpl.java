package kr.or.ddit.dao;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.util.MybatisSqlSessionFactory;
import kr.or.ddit.vo.EmailVO;

public class EmailDAOImpl implements IEmailDAO {
	private static IEmailDAO dao;

	private EmailDAOImpl() {
		// TODO Auto-generated constructor stub
	}

	public static IEmailDAO getInstance() {
		if (dao == null)
			dao = new EmailDAOImpl();
		return dao;
	}

	@Override
	public int insertMail(EmailVO vo) {
		SqlSession session = null;
		EmailVO email = null;
		int cnt = 0;
		try {
			session = MybatisSqlSessionFactory.getSqlSession();
			
			cnt = session.insert("email.insertMail", vo);

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.commit();
			session.close();
		}
		
		return cnt;
	}

}
