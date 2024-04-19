<Frame
  id="$header"
  _disclosedFields={{ array: ["primary-surface", "accent-background"] }}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={false}
  sticky={true}
  style={{
    ordered: [
      { "primary-text": "" },
      { "accent-background": "rgb(70, 166, 124)" },
    ],
  }}
  type="header"
>
  <Image
    id="image1"
    dbBlobId="c4bf7a59-ae70-48e4-9219-8b58eca0f82b"
    fit="contain"
    horizontalAlign="center"
    src="https://placekitten.com/400/300"
    srcType="dbBlobId"
  />
  <Text id="labelProgramName" value="### BHT" verticalAlign="center" />
  <Navigation
    id="navBar_Session"
    horizontalAlignment="right"
    itemMode="static"
    src="ttps://retool-templates.s3.us-west-2.amazonaws.com/app-templates/admin-panel-logo.png"
    style={{
      ordered: [
        { highlightBackground: "" },
        { highlightText: "rgb(70, 166, 124)" },
        { hoverText: "" },
      ],
    }}
  >
    <Option id="51123" itemType="app" label="Log Out" />
  </Navigation>
</Frame>
