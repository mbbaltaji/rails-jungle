describe('Jungle rails app', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000')
  })

  it("Cart count should increase by 1", () => {
    cy.get(".btn").first().click({force:true});
    cy.get(".nav-link").contains(1)

  })

});