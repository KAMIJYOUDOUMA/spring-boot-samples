package sample.activemq;

import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

@Component
public class TopicConsumer {

    @JmsListener(destination = "sample.topic", containerFactory = "jmsListenerContainerTopic")
    public void receiveTopic1(String text) {
        System.out.println(text);
    }

    @JmsListener(destination = "sample.topic", containerFactory = "jmsListenerContainerTopic")
    public void receiveTopic2(String text) {
        System.out.println(text);
    }
}
