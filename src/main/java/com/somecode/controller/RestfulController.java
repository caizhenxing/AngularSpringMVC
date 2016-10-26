package com.somecode.controller;

import com.somecode.domain.Data;
import com.somecode.domain.DataParams;
import com.somecode.domain.RequestObj;
import com.somecode.domain.Role;
import com.somecode.service.PacketAppService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

import static com.somecode.utils.Utils.getMessage;


@Controller
@PropertySource(value = "classpath:messages.properties")
@Log4j
public class RestfulController {

    private final static String HOME_MAPPING = "/home";
    private final static String HOME_MAPPING_FILE = "/resources/admin.jsp";
    private final static String USER_LOGIN_MAPPING = "/users/login";
    private final static String LOAD_DATA_MAPPING = "/loadData";
    private final static String SAVE_ALL_CHANGES_MAPPING = "/saveAllChangesToBase";
    private final static String LOAD_DATA_FOR_ALL_PACKETS = "restful.loadDataForAllPackets";
    private final static String LOAD_DATA_FOR_GIVEN_PACKET = "restful.loadDataForGivenPacket";
    private final static String SAVE_ALL_CHANGES_TO_BASE = "restful.saveAllChangesToBase";
    @Autowired
    private PacketAppService packetAppService;

    @RequestMapping({HOME_MAPPING, ""})
    public String home(){
        return HOME_MAPPING_FILE;
    }

    @RequestMapping(value = USER_LOGIN_MAPPING, method = RequestMethod.POST)
    public
    @ResponseBody
    Role getUserRole(@RequestBody RequestObj requestObj) {
        return packetAppService.getUserRole(requestObj.getSecurityParams().getUsername(),
                requestObj.getSecurityParams().getPassword());
    }

    @RequestMapping(value = LOAD_DATA_MAPPING, method = RequestMethod.POST)
    public
    @ResponseBody
    Data loadData(@RequestBody RequestObj requestObj) throws Exception {
        Long packetId = requestObj.getDataParams().getPacketId();
        log.debug(packetId == null
                ? getMessage(LOAD_DATA_FOR_ALL_PACKETS, null)
                : getMessage(LOAD_DATA_FOR_GIVEN_PACKET, new Object[]{packetId})
        );
        return packetAppService.loadData(packetId);
    }

    @RequestMapping(value = SAVE_ALL_CHANGES_MAPPING, method = RequestMethod.POST)
    public Map<String, Boolean> saveAllChangesToBase(@RequestBody RequestObj requestObj) throws Exception {
        log.debug(getMessage(SAVE_ALL_CHANGES_TO_BASE, null));
        DataParams params = requestObj.getDataParams();
        return packetAppService.saveAllChangesToBase(params.getComptIdsToDelete(),
                params.getPacketIdsToDelete(),
                params.getComptsToUpdateParamsList(),
                params.getPacketsToAddParamsList(),
                params.getPacketsToUpdateParamsList(),
                params.getPacketId());
    }
}

