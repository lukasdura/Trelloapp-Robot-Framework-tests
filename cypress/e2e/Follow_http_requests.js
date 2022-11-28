/// <reference types="cypress" />

describe('Follow http requests', ()=>{


beforeEach( () => {

    cy.intercept('POST', '/api/tasks')
    .as('createTask')


    cy.intercept('PATCH', '/api/tasks/*')
     .as('marktask')


})    

it('Create task and follow  the request',()=>{

 

    cy.visit('/board/15890663812')

    cy.get('.List_addTask')
     .click()
     
    
    cy.get('[data-id="newTaskTitle"]')
     .click()
      .type('HTTP{enter}')
     
    cy.wait('@createTask')
     .its('response.body.title')
      .should('eq', 'HTTP')
     
})


it('Mark task and follow the request',()=>{


  cy.get(':nth-child(3) > .container > [data-cy="task-done"]')
   .check()

  cy.wait('@marktask').then(marking=>{
   expect(marking.response.body.title).to.eq('HTTP')
    expect(marking.response.body.completed).to.eq(true )
  



})
})
})