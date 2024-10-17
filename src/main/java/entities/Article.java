package entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Article {
    private int id;
    private String title;
    private String content;
    private Date published_date;
    private String imageUrl;
    private User user;
    private Category category;
}
