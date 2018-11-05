

package sample.data.jpa.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sample.data.jpa.domain.City;
import sample.data.jpa.service.CityRepository;

import java.util.Arrays;

@Controller
public class CityController {

    @Autowired
    private CityRepository cityRepository;

    @GetMapping("/")
    @ResponseBody
    @Transactional()
    public void helloWorld() {
        City city = cityRepository.findByNameAndCountryAllIgnoringCase("Bath", "UK");
        System.out.println(city);

        Page<City> cityPage = cityRepository.findAll(new PageRequest(0,
                10,
                new Sort(Sort.Direction.DESC, "name")));
        System.out.println(Arrays.toString(cityPage.getContent().toArray()));

        City city1 = cityRepository.queryById(1);
        System.out.println(city1);

        int modified = cityRepository.updateNameById(1,"tensai");
        System.out.println(modified);
    }

}
