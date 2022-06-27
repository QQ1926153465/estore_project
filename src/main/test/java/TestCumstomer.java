import com.briup.estore.dao.CustomerDao;
import com.briup.estore.entity.Customer;
import com.briup.estore.utils.MyBatisSqlSessionFactory;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;

/**
 * @Classname TestCumstomer
 * @Description TODO
 * @Version 1.0.0
 * @Date 2022/6/26 17:16
 * @Created by Mr.WuChaoWen
 */
public class TestCumstomer {
    SqlSessionFactory factory = MyBatisSqlSessionFactory.getSqlSessionFactory();
    SqlSession session = factory.openSession();
    CustomerDao mapper = session.getMapper(CustomerDao.class);
    @Test
    public void TestInsert(){
        Customer customer = new Customer("name",
                "123456","123456",
                "123456","10086",
                "10086@qq.com");

        mapper.register(customer);
        session.commit();
        session.close();
    }
    @Test
    public void TestSelect(){
        Customer customer = mapper.findByName("11");
        System.out.println("customer = " + customer);

    }
}
