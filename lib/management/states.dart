abstract class buttonstates {}

class bttonintialstate extends buttonstates{}
class buttonchangestate extends buttonstates{}


class buttonchangemode extends buttonstates{}



class loodbusiness extends buttonstates{}
class sucssesbusiness extends buttonstates{}
class failbusiness extends buttonstates
{
  final String error;
  failbusiness(this.error);
}

class loodsports extends buttonstates{}
class sucssessports extends buttonstates{}
class failsports extends buttonstates
{
  final String error;
  failsports(this.error);
}
class loodscience extends buttonstates{}
class sucssesscience extends buttonstates{}
class failscience extends buttonstates
{
  final String error;
  failscience(this.error);
}

class loodsearch extends buttonstates{}
class sucssessearch extends buttonstates{}
class failsearch extends buttonstates
{
  final String error;
  failsearch(this.error);
}