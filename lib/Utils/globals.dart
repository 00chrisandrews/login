library my_prj.globals;

int userPoints = 0;
int userTotalItems = 0;

String groupName = "";

bool userCreatedGroup = false;

void addUserPointsAndItem() {
  userPoints += 10;
  userTotalItems += 1;
}

getUserItems() {
  return userTotalItems.toString();
}

getUserPoints() {
  return userPoints.toString();
}

setUserCreatedGroup(bool hasUserCreatedGroup) {
  userCreatedGroup = hasUserCreatedGroup;
}

getUserHasCreatedGroup() {
  return userCreatedGroup;
}

setGroupName(String inputName) {
  groupName = inputName;
}

getGroupName() {
  return groupName;
}

groupLabel() {
  if (userCreatedGroup == false) {
    return "*Create a group to display group stats";
  } else {
    return "Position in group";
  }
}
