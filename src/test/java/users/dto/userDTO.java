package users.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
public class userDTO {
    public Long id;
    public categoryDTO category;
    public String name = "Unknown";
    public List<String> photoUrls;
    public List<tagDTO> tags;
    public String status;
}