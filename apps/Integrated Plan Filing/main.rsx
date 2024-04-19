<App>
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#ffffff"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary=""
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    _disclosedFields={{ array: [] }}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Include src="./src/container1.rsx" />
    <Text
      id="title"
      _disclosedFields={["color"]}
      style={{ ordered: [{ color: "rgb(23, 61, 36)" }] }}
      value="### User Management"
    />
    <TextInput
      id="searchFilter"
      _disclosedFields={["iconBefore"]}
      hideLabel={true}
      iconBefore="bold/interface-search"
      placeholder="Search by name"
    />
    <Modal
      id="modal1"
      _disclosedFields={{
        array: ["accent-background", "border-radius", "accent-foreground"],
      }}
      buttonText="Add user"
      events={[]}
      modalHeight="488px"
      modalHeightType="auto"
      style={{
        ordered: [
          { "accent-background": "rgb(70, 166, 124)" },
          { "border-color": "" },
          { "border-radius": "8px" },
          { "accent-foreground": "rgb(255, 255, 255)" },
        ],
      }}
    >
      <Form
        id="CreateUserForm1"
        footerPaddingType="normal"
        headerPaddingType="normal"
        heightType="fixed"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
        style={{ ordered: [{ border: "surfacePrimary" }] }}
      >
        <Header>
          <Text id="formTitle5" value="#### New user" verticalAlign="center" />
        </Header>
        <Body>
          <TextInput
            id="textInput1"
            _disclosedFields={["required"]}
            formDataKey="name"
            label="Name"
            labelPosition="top"
            placeholder="Enter value"
            required={true}
            style={{ ordered: [{ borderRadius: "8px" }] }}
          />
          <TextInput
            id="middleFormInput2"
            _disclosedFields={[
              "patternType",
              "iconBefore",
              "editIcon",
              "required",
            ]}
            formDataKey="email"
            iconBefore="bold/mail-send-envelope"
            label="Email"
            labelPosition="top"
            patternType="email"
            placeholder="you@example.com"
            required={true}
            style={{ ordered: [{ borderRadius: "8px" }] }}
          />
          <Date
            id="bottomFormInput4"
            _disclosedFields={["iconBefore", "editIcon", "required"]}
            dateFormat="MMM d, yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            formDataKey="signup_date"
            iconBefore="bold/interface-calendar"
            label="Signup date"
            labelPosition="top"
            required={true}
            style={{ ordered: [{ borderRadius: "8px" }] }}
            value="{{ new Date() }}"
          />
          <Select
            id="select1"
            automaticItemColors={true}
            captionByIndex=""
            data="{{ getRows.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            formDataKey="role"
            label="Role"
            labelPosition="top"
            labels=""
            overlayMaxHeight={375}
            placeholder="Select a role"
            required={true}
            showSelectionIndicator={true}
            values="{{ item.role }}"
          />
          <Checkbox
            id="checkbox1"
            _disclosedFields={["required"]}
            formDataKey="enabled"
            label="Enabled"
            style={{ ordered: [{ borderRadius: "8px" }] }}
          />
        </Body>
        <Footer>
          <Button
            id="formButton2"
            style={{
              ordered: [
                { background: "rgb(70, 166, 124)" },
                { borderRadius: "8px" },
              ],
            }}
            styleVariant="solid"
            submit={true}
            submitTargetId="CreateUserForm1"
            text="Submit user"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="addNewRow"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="close"
          params={{ ordered: [] }}
          pluginId="modal1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Table
      id="dataTable"
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ getRows.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "dee66", direction: "desc" } }]}
      enableSaveActions={true}
      primaryKeyColumnId="dee66"
      searchTerm="{{searchFilter.value}}"
      selectedDataIndexes={[]}
      selectedRowKeys={[]}
      selectedRows={[]}
      selectedSourceRows={[]}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      sortArray={[]}
      style={{
        border: "rgb(204, 204, 204)",
        borderRadius: "8px",
        accent: "rgb(70, 166, 124)",
      }}
      templatePageSize={20}
    >
      <Column
        id="dee66"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.546875}
      />
      <Column
        id="4ad9e"
        alignment="left"
        format="string"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={140.109375}
      />
      <Column
        id="8fc55"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        key="email"
        label="Email"
        position="center"
        size={204.234375}
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="dbc77"
        alignment="left"
        format="datetime"
        key="signup_date"
        label="Signup date"
        placeholder="Enter value"
        position="center"
        size={152.921875}
      />
      <Column
        id="9495e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        key="role"
        label="Role"
        placeholder="Select option"
        position="center"
        size={71.78125}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="fa654"
        alignment="left"
        format="boolean"
        key="enabled"
        label="Enabled"
        placeholder="Enter value"
        position="center"
        size={62.875}
      />
    </Table>
    <Form
      id="UpdateUserForm1"
      footerPaddingType="normal"
      headerPaddingType="normal"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle4"
          value="#### {{dataTable.selectedRow.name}}"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="email1"
          formDataKey="email"
          iconBefore="bold/mail-send-envelope"
          label="Email"
          patternType="email"
          placeholder="you@example.com"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{dataTable.selectedRow?.email}}"
        />
        <Date
          id="date1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="signup_date"
          iconBefore="bold/interface-calendar"
          label="Signup date"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{dataTable.selectedRow.signup_date}}"
        />
        <Select
          id="select2"
          captionByIndex=""
          data="{{ getRows.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          formDataKey="role"
          label="Role"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select a role"
          required={true}
          showSelectionIndicator={true}
          value="{{ dataTable.selectedRow.role }}"
          values="{{ item.role }}"
        />
        <Checkbox
          id="checkbox3"
          _disclosedFields={["required", "checkedBackground"]}
          formDataKey="enabled"
          label="Enabled"
          labelPosition="left"
          style={{
            ordered: [
              { checkedBackground: "rgb(70, 166, 124)" },
              { borderRadius: "8px" },
            ],
          }}
          value="{{dataTable.selectedRow?.enabled}}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          style={{ ordered: [{ borderRadius: "8px" }, { background: "" }] }}
          styleVariant="outline"
          submit={true}
          submitTargetId="UpdateUserForm1"
          text="Save changes"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateRow"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Frame>
</App>
