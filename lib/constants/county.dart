class Country {
  final String name;
  final String domain;

  Country(this.name, this.domain);
}

Country unitedArabEmirates = Country('United Arab Emirates', 'ae');
Country switzerland = Country('Switzerland', 'sh');
Country russia = Country('Russia', 'ru');
Country indonezia = Country('Indonezia', 'id');
Country india = Country('India', 'in');
Country usa = Country('USA', 'us');
Country korea = Country('Korea', 'kr');
Country turkey = Country('Turkey', 'tr');
Country ukraine = Country('Ukraine', 'ua');

Set<Country> countrySet = {
  unitedArabEmirates,
  switzerland,
  russia,
  indonezia,
  india,
  usa,
  korea,
  turkey,
  ukraine,
};
