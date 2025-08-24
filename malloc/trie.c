// #include <string.h>    // for memset
// #include <pthread.h>   // for pthread_mutex_t
// #include "trie.h"



// // Static pool variables
// static struct trieNode *trie_node_pool = NULL;
// static size_t trie_node_index = 0;

// // Mutex for one-time initialization
// static pthread_mutex_t trie_init_lock = PTHREAD_MUTEX_INITIALIZER;
// int trie_initialized = 0;

// int is_trie_initialized(void) {
//     return trie_initialized;
// }

// // Initialize the trie node pool (called only once)
// void init_trie_pool(mstate av) {
//     pthread_mutex_lock(&trie_init_lock);

//     if (!trie_initialized) {
//         trie_node_pool = (struct trieNode *) sysmalloc(
//             MAX_TRIE_NODES * sizeof(struct trieNode), av);

//         if (!trie_node_pool) {
//             pthread_mutex_unlock(&trie_init_lock);
//             return;
//         }

//         memset(trie_node_pool, 0, MAX_TRIE_NODES * sizeof(struct trieNode));
//         trie_node_index = 0;
//         trie_initialized = 1;
//     }

//     pthread_mutex_unlock(&trie_init_lock);
// }

// // Get a trie node from the pool
// struct trieNode *get_trie_node(mstate av) {
//     if (__glibc_unlikely(!trie_initialized)) {
//         init_trie_pool(av);
//     }

//     if (trie_node_index >= MAX_TRIE_NODES) {
//         // Fallback: either return NULL or allocate dynamically
//         return NULL;
//     }

//     return &trie_node_pool[trie_node_index++];
// }

// // Example: inserting an address into the trie
// void trie_insert_address(mstate av, uintptr_t addr) {
//     struct trieNode *node = trie_node_pool;
//     if (!node) {
//         node = get_trie_node(av);
//         if (!node) return; // Out of pool memory
//     }

//     unsigned char *bytes = (unsigned char *)&addr;
//     for (size_t i = 0; i < sizeof(addr); i++) {
//         if (!node->children[bytes[i]]) {
//             node->children[bytes[i]] = get_trie_node(av);
//             if (!node->children[bytes[i]]) return; // Pool exhausted
//         }
//         node = node->children[bytes[i]];
//     }
//     node->is_end = 1;
// }
