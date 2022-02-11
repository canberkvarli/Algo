// ============================================================================
// Implementation Exercise: Singly Linked List
// ============================================================================
//
// -------
// Prompt:
// -------
//
// Implement a Singly Linked List and all of its methods below!
//
// ------------
// Constraints:
// ------------
//
// Make sure the time and space complexity of each is equivalent to those 
// in the table provided in the Time and Space Complexity Analysis section
// of your Linked List reading!
//
// -----------
// Let's Code!
// -----------

// TODO: Implement a Linked List Node class here
class Node {
    constructor(val) {
       this.value = val
       this.next = null
    }

}

// TODO: Implement a Singly Linked List class here
class LinkedList {
    constructor() {
        this.head = null
        this.tail = null
        this.length = 0

    }

    // TODO: Implement the addToTail method here
    addToTail(val) {
        const node = new Node(val)
        if (!this.head) {
            this.head = node
        }else{
            this.head.next = node
        }
        this.tail = node
        this.length += 1
        return this
    }

    // TODO: Implement the removeTail method here
    removeTail() {
        if(this.length == 0){
            return undefined
        }
        let current = this.head
        let newTail = current; //one after this is the previous tail
        while (current.next) { // until it is the prev tail
            // until current is the last node traverse
            newTail = current
            current = current.next
        }
        this.tail = newTail
        this.tail.next = null
        this.length -= 1
        
        if(this.length === 0){
            this.head = null
            this.tail = null
        }
        return current
        // current.next is the last node

    }

    // TODO: Implement the addToHead method here
    addToHead(val) {

        const node = new Node(val)

        if (!this.head) {
            this.head = node 
            this.tail = node
        }else{
            node.next = this.head
            this.head = node
        }
        this.length += 1
        return this


    }

    // TODO: Implement the removeHead method here
    removeHead() {
        if (!this.head) {
            return undefined
        }
        
        let current = this.head //remove this
        //new head is the this.head
        this.head = current.next
        this.length -= 1
        if(this.length == 0){
            // this.head = null
            this.tail = null
        }
        return current
    }

    // TODO: Implement the contains method here
    contains(target) {
        // return true if target is in the list
        // else return false
        let node = this.head
        while (node) {
            if (node.value === target) return true;
            node = node.next
        }
        return false
    }

    // TODO: Implement the get method here
    get(index) {
        if (index < 0 || index >= this.length) return null;
        let counter = 0;
        let current = this.head;
        while (counter !== index) {
            current = current.next;
            counter++;
        }
        return current;
    }

    // TODO: Implement the set method here
    set(index, val) {
       let targetNode = this.get(index)
       if(targetNode){
           targetNode.value = val
           return true
       }else{
           return false
       }


    }

    // TODO: Implement the insert method here
    insert(index, val) {
    if (index < 0 || index >= this.length) {return false}
    if (index === this.length) {return !!this.addToTail(val)}
    if(index === 0){ return !!this.addToHead(val)}

    const newNode = new Node(val)
    const prevNode = this.get(index - 1);
    const temp = prevNode.next
    prevNode.next = newNode;
    newNode.next = temp;
    this.length++;
    return true

    }

    // TODO: Implement the remove method here
    remove(index) {

    }

    // TODO: Implement the size method here
    size() {
       return this.length
    }
}

exports.Node = Node;
exports.LinkedList = LinkedList;
