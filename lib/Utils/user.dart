class User {
  int points = 10;

  addPointsToUser() {
    points += 10;
    return points;
  }

  getuserPoints() {
    return points.toString();
  }
}
