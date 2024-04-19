<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  showHeaderBorder={false}
>
  <Header>
    <Text
      id="labelLandingTitle"
      value="## Integrated Plan and Budget"
      verticalAlign="center"
    />
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="labelstatusContainerTitle"
          value="##### Filing Status: {status}"
          verticalAlign="center"
        />
      </Header>
      <View id="c5e66" viewKey="View 1">
        <Text
          id="text2"
          value="Your plan will be available to submit when all sections and required fields are completed.

Due date: {dueDate}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Text
      id="labelProgramDescription"
      value="The BHSA (SB 326, Eggman) requires all counties to submit a three-year integrated plan and budget outlining intended use of funds and a budget for behavioral health programs administered (W&I Code § 5963.02). "
      verticalAlign="center"
    />
    <Text
      id="labelFilingPeriod"
      value="Current Filing Year: {filingPeriodStartDate} - {filingPeriodEndDate}"
      verticalAlign="center"
    />
    <Container
      id="generalInfoContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader="true"
      showHeaderBorder={false}
    >
      <Header>
        <Text
          id="containerTitle_generalInfo"
          value="##### General Information"
          verticalAlign="center"
        />
      </Header>
      <View id="c5e66" viewKey="View 1">
        <Text
          id="label_generalInfoStatus"
          value="{generalInformationStatus}"
          verticalAlign="center"
        />
        <Button
          id="btn_start_generalInfo"
          style={{ ordered: [] }}
          styleVariant="outline"
          submit={true}
          submitTargetId=""
          text="Start"
        />
      </View>
    </Container>
  </Header>
  <View id="c5e66" viewKey="View 1">
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader="false"
      showHeaderBorder={false}
    >
      <Header>
        <Text
          id="containerTitle3"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="c5e66" viewKey="View 1" />
    </Container>
  </View>
</Container>
