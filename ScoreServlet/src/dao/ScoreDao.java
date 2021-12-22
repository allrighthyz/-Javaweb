package dao;

import java.util.List;

import model.PageBean;
import model.Score;

public interface ScoreDao {
	/*
	 * ��ӳɼ�
	 */
	int addScore(Score score);
	/*
	 * ɾ���ɼ�
	 */
	int deleteScore(int scoreID);
	/*
	 * �޸ĳɼ�
	 */
	int editCos(Score score);
	/*
	 * ��ѯ���гɼ�
	 */
	List findAll();
	/*
	 * ��ѯһ��ѧ���ɼ�
	 */
	List findOne(String stuNum);
	/*
	 * ��ѯһ��ѧ��һ�ſγ�
	 */
	List selectScore(int scoreID);
	/*
	 * ��ѯ��ѧ���ĸ��ſγ��Ƿ����
	 */
	Score selectScoreInfo(Score score);
	/*
	 * ��ҳ��ʾһ��ѧ���ɼ���Ϣ
	 */
	PageBean scoreListPage(int pageNo, int pageCount, String stuNum);
	/*
	 * ��ҳ��ʾ�ɼ�
	 */
	PageBean scoreListPage(int pageNo, int pageCount);
	/*
	 * ��ѯһ��ѧ����һ�ſγɼ�
	 */
	List findStuOne(String stuNum, String courseName);
	/*
	 * ��ѯѧ���ܷ�����
	 */
	PageBean selectScoreSum(int pageNo, int pageCount);
	/*
	 * ģ����ѯѧ���ɼ�
	 */
	PageBean selectStuScore(int pageNo, int pageCount, Score score);
	/*
	 * ��ѯһ����ʦ�����Ŀγ�
	 */
	PageBean selectTeaScore(int pageNo, int pageCount, String teaName, Score score);
	
}
