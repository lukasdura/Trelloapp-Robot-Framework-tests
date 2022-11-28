/// <reference types="cypress" />

beforeEach( () => {

    cy
      .visit('/board/15890663812')
  
  });
  
  it('over vsetky zaskrtnute tasky', () => {
  
    cy.get('.checkmark')
     .eq(3)
      .check({force: true})
  
  
    cy.get('.Task label').then( task=>{
  
     expect(task[0]).to.not.have.class('completed')
      expect(task[1]).to.not.have.class('completed')
       expect(task[2]).to.have.class('completed')
  
    })
  
      
  
  
  
    })