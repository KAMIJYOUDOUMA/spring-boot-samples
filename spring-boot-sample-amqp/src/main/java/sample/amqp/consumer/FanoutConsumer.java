package sample.amqp.consumer;


import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;
import sample.amqp.constant.MQConst;

@Component
public class FanoutConsumer {

    @RabbitListener(queues = MQConst.FANOUT_QUEUENAME1)
    @RabbitHandler
    public void process1(String message) {
        System.out.println("queue:fanout.message1,message:" + message);
    }

    @RabbitListener(queues = MQConst.FANOUT_QUEUENAME2)
    @RabbitHandler
    public void process2(String message) {
        System.out.println("queue:fanout.message2,message:" + message);
    }
}
