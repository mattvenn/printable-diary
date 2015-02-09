#!/usr/bin/python
import trello
import trellokeys as keys
import ipdb
import os

def auth():
    client = trello.TrelloClient(keys.api_key,token=keys.oauth_token)

    #get all the boards
    boards = client.list_boards()
    #only want the tasks board
    return boards

#fetch all cards in a list
def get_tasks(board,name,nice_name):
    ret = []
    todo = filter(lambda x: x.name == name, board.all_lists())[0]
    cards = todo.list_cards()

    print('# {}'.format(nice_name))
    print("")
    for card in cards:
        print( '* ' + card.name )
        ret.append(card.name)
        #ipdb.set_trace()
    print("")
    return ret

if __name__ == '__main__':
    boards = auth()

    print("% Todo List")
    print("% Matt Venn")
    print("%")
    print("")

    tasks = filter(lambda x: x.name == 'tasks', boards)[0]
    get_tasks(tasks,'Doing','Personal')

    tasks = filter(lambda x: x.name == 'cpd4t', boards)[0]
    get_tasks(tasks,'Doing','CPD4T')
