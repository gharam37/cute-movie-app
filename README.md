## Tiny Movie App

## How to Run

```sh
git clone git@github.com:gharam37/cute-movie-app.git
cd cute-movie-app
bundle
rails db:migrate
rails s


```

## Routes

| Route                    | Location                           |
| ------------------------ | ---------------------------------- |
| Movies List And Ordering | http://localhost:3000/movies/index |
| Staff List and Search    | http://localhost:3000/staffs/index |

![Movies View](https://github.com/gharam37/cute-movie-app/assets/25537073/c53353ea-f135-4bcb-837a-b76ca8c2af58)

![Staff View](https://github.com/gharam37/cute-movie-app/assets/25537073/fe92a296-4e1c-48d6-b34e-bcbcf5f05da0)

## Notes

I hate so many things about this code so here's some of the few things i would do better given time

- Use a proper DB like PSQL and use its great pg search features
- use rails resources and not do this ugly /index things
- think of smarter ways to fetch an aggerate data
- dockerize this code
- remove all the unused files
- do a bit of linting
- seed the data with the data_migrate gem ( i like to keep db and data migrations seperate)
- read the files with ROO
- do something about these views xD
- I would also write a much prettier readme

I also did an overkill things by assuming that the repeated rows belong to the same movie and created a staff table for the actor search thing - I did an overkill things by assuming that the repeated rows belong to the same movie and created a staff table for the actor search thing

SHOUT OUT TO MY BROTHERS GEMINI AND CHATGPT
