#import "../CVTemplate.typ": CVTemplate;

#show: document => CVTemplate(
  "./test/applicant.json",
  "../test/DefaultApplicantPhoto.svg",
  "en_US"
);
