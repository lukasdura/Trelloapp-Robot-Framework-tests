/// <reference types="cypress" />

const tasks = ['peter', 'karol', 'juraj', 'ondrej']

 beforeEach( () => {

    
    cy.intercept('/api/boards/*')
    .as('boarddetails')

      cy.request('DELETE', '/api/tasks')
       
       tasks.forEach(task=>{
    
        cy.request({
         method:'POST',
          url:'/api/tasks',
           body:{
            title:task,
             boardId:65268860281,
              listId:66788519524

}})
     
})
})

  it('Check third task name', () => {

cy.visit('/board/65268860281')
 cy.wait('@boarddetails').then(task=>{
  let Taskindex = Cypress._.findIndex(task.response.body.tasks,{title:'juraj'}) 
   expect(Taskindex).to.eq(2)



})
})