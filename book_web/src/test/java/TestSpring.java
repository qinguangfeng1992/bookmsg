
import com.qinguangfeng.Start;
import com.qinguangfeng.dao.entity.Book;

import com.qinguangfeng.services.impl.BooMsgServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(value = Start.class)
public class TestSpring {
    @Autowired
    private BooMsgServiceImpl booMsgService;
    Book book;

    @Test
    public void testStart() {
        List<Book> list = booMsgService.findAll();
        for (Book to : list) {
            System.out.println(to.getBookname());
        }
    }

    @Test
    public void testFinBookAll() {
        Book num=  booMsgService.findBookAll(5);
        System.out.println(num.getBookname());
    }

    @Test
    public void doupdate(){
        Book b=new Book();
        b.setBookid(1);
        b.setBooktype("");
//        b.setBookname("wqe");
//        b.setBookauthor("ty");
//        b.setBookprice(32);
//        b.setBookpublish(null);
//        b.setBooknum(0);
        System.out.print("======="+booMsgService.updateBook(b)+"=========");
    }


}
