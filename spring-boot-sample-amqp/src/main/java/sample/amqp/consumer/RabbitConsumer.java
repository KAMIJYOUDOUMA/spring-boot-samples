package sample.amqp.consumer;


import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class RabbitConsumer {
    @RabbitHandler
    @RabbitListener(queues = "hello")
    public void process(@Payload String foo) {
        System.out.println(new Date() + ": " + foo);
    }
}
