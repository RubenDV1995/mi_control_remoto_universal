bool toBool(String? value){
  if(value == 'true'){
    return true;
  }
  if(value == null){
    return false;
  }
  return false;
}