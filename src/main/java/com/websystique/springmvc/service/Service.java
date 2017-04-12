package com.websystique.springmvc.service;



import com.websystique.springmvc.DAO.Offer;
import com.websystique.springmvc.DAO.OfferDAO;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Shuai Zheng on 4/9/17.
 */
@org.springframework.stereotype.Service
public class Service {
    @Resource
    private OfferDAO offerDAO;

    public List<Offer> getCurrentOffer() {
        return offerDAO.getOffers();
    }

}
