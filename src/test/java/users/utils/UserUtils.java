package users.utils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import users.dto.userDTO;

import java.util.List;
import java.util.Map;

import static java.lang.String.format;
import static java.util.stream.Collectors.*;

public class UserUtils {

    public static String countUsersByName(String responsePayload) throws JsonProcessingException {
        List<userDTO> userList = JsonMapper.jsonStringToObject(responsePayload, new TypeReference<List<userDTO>>() {
        });
        Map<String, Long> nameCounter = userList.stream().collect(groupingBy(userDTO::getName, counting()));
        return nameCounter.keySet().stream()
                .map(userName -> format("\"%s\":%d", userName, nameCounter.get(userName)))
                .collect(joining(",", "{", "}"));
    }

}