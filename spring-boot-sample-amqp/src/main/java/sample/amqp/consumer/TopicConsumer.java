package sample.amqp.consumer;


import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;
import sample.amqp.constant.MQConst;

@Component
public class TopicConsumer {

    @RabbitListener(queues = MQConst.TOPIC_QUEUENAME1)
    @RabbitHandler
    public void process1(String message) {
        System.out.println("queue:topic.message1,message:" + message);
    }

    @RabbitListener(queues = MQConst.TOPIC_QUEUENAME2)
    @RabbitHandler
    public void process2(String message) {
        System.out.println("queue:topic.message2,message:" + message);
    }
}
