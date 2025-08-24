// #ifndef TRIE_H
// #define TRIE_H

// #include <stdbool.h>
// #include <stdint.h>
// // #include "malloc.h" 
// #include "include/malloc.h" 
// // Maximum number of trie nodes in the static pool
// #define MAX_TRIE_NODES 1024
// extern int trie_initialized;

// // Trie node structure for byte-based trie
// struct trieNode {
//     struct trieNode *children[256];  // One child per possible byte value
//     int is_end;                      // Marks end of an address
// };

// int is_trie_initialized(void);

// // Initialize the trie node pool (only once)
// // void init_trie_pool(mstate av);

// // Get a new trie node from the pool
// struct trieNode *get_trie_node(mstate av);

// // Insert an address into the trie
// void trie_insert_address(mstate av, uintptr_t addr);

// #endif // TRIE_H
