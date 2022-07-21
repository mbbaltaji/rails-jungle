describe('testing product details', () => {
  beforeEach(() => {
    cy.visit('/', {timeout: 30000})
  })

  it("products are clickable", () => {
    cy.get('[alt="Giant Tea"]').click();
    cy.get(".product-detail").should("be.visible");
  })

  it("there is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

})