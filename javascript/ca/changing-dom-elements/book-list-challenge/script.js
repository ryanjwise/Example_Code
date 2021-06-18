var books = [
  {
    title: "The Design of EveryDay Things",
    author: "Don Norman",
    alreadyRead: false,
    image: "http://images.folksy.com/aXRlbXMvMjUzMzczLzIwMTQwODA4LzEyNzI1Njg1ODY5-N/gallery/6499579-Handmade-Book-Cover-from-Antiquarian-Books-fabric-Design-C-0"
  },
  {
    title: "The Most Human Human",
    author: "Brian Christian",
    alreadyRead: true,
    image: "http://thumbs.dreamstime.com/t/old-book-17580496.jpg"
  },
  {
    title: "How to Drive",
    author: "Ben Collins",
    alreadyRead: true,
    image: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fvignette1.wikia.nocookie.net%2Fpottermore%2Fimages%2F2%2F20%2FBook-of-spells-lrg.png%2Frevision%2Flatest%2Fscale-to-width-down%2F180%3Fcb%3D20121119181124&f=1&nofb=1"
  },
  {
    title: "Architects Studio Companion",
    author: "Ching",
    alreadyRead: true,
    image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F9%2F9b%2FCastaway_book_cover.gif&f=1&nofb=1"
  },
];

const body = document.body;

const bookList = document.createElement("ul")
for(let book of books){
  let li = document.createElement("li")
  let image = document.createElement("img")
  image.src = `${book.image}`
  li.textContent = `${book.title} - by ${book.author}`
  li.prepend(image)
  if (book.alreadyRead) {li.style.color = "red"}
  bookList.appendChild(li)
}

body.appendChild(bookList)