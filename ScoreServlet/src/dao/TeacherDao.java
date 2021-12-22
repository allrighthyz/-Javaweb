package dao;

import java.util.List;

import model.PageBean;
import model.Teacher;


public interface TeacherDao {
	/*
	 * ��ӽ�ʦ
	 */
	int addTea(Teacher teacher);
	/*
	 * ɾ����ʦ
	 */
	int deleteTea(String teaNum);
	/*
	 * �޸Ľ�ʦ
	 */
	int editTea(Teacher teacher);
	/*
	 * ��ѯ���н�ʦ
	 */
	List findAll();
	/*
	 * ��ѯһ����ʦ
	 */
	List findOne(String teaNum);
	/*
	 * ��ҳ��ʾ���н�ʦ
	 */
	PageBean teaListPage(int pageNo, int pageCount);
}
