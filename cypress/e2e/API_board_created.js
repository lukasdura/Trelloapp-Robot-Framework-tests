/// <reference types="cypress" />

beforeEach( () => {

    
    cy.request('DELETE', '/api/boards')
  
     cy.request('POST', '/api/boards',{
  
        name:'HTTP-BOARD'
 })
 })
  
  it('board created through http request + check board lenght ', () => {
  
    cy
      .visit('/')
        cy.get('.board_title')
         .should('contain.text', 'HTTP-BOARD')
  
  
      cy.get('.board')
      .should('have.length', '2')
  })