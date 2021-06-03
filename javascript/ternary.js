function canItFly(bird) {
  switch (bird.toLowerCase()) {
      case "penguin":
      case "ostrich":
      case "kiwi":
      case "cassowary":
        return false;
      case "cockatiel":
      case "finch":
      case "dove":
      case "parrot":
        return true;
      default:
        return false;
  }
}

function canItFly(bird) {
  switch (bird.toLowerCase()) {
      case "penguin":
        return false;
        break;
      case "ostrich":
        return false;
        break;
      case "kiwi":
        return false;
        break;
      case "cassowary":
        return false;
        break;
      case "cockatiel":
        return true;
        break;
      case "finch":
        return true;
        break;
      case "dove":
        return true;
        break;
      case "parrot":
        return true;
        break;
      default:
        return false;
  }
}


console.log(canItFly("cockatiel"))