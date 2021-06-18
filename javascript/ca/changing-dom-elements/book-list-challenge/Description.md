# The Book List
In this activity, you will use JavaScript and DOM manipulation to display information about books on a web page.

In the scaffold, you will find an `index.html`. Modify the index.html to accomplish the following:

## 1. Add a script tag to the bottom of the page, where all your JS will go.

## 2. Copy this array of books:

```js
    var books = [
      {
        title: 'The Design of EveryDay Things',
        author: 'Don Norman',
        alreadyRead: false
      }, {
        title: 'The Most Human Human',
        author: 'Brian Christian',
        alreadyRead: true
      }
    ];
```

And add two of your favourite books to the array. 

## 3. For the array of books:

- Create an unordered list element to display all books
- Iterate through the array and include a list item element for each book
  - It should include the book title and the book author and append it to the unordered list

## Bonus - for extra fun and learning!

### 1. Add an image element with an image of the book cover for each book (can be a link to an image, or you can add an image to the scaffold).

### 2. Change the style of the book information shown depending on whether you have read it or not. For example, you might change the font or background colour of the book title.