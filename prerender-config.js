// Pre-rendering configuration for search engines
// This file helps search engines understand the SPA structure

window.prerenderConfig = {
    // Enable pre-rendering for search engines
    prerender: true,
    
    // Define sections for pre-rendering
    sections: [
        {
            id: 'game',
            title: 'Flip Bottle Game',
            description: 'Play the addictive bottle flipping game online',
            keywords: ['game', 'play', 'bottle flip', 'interactive']
        },
        {
            id: 'about',
            title: 'About Flip Bottle',
            description: 'Learn about the bottle flipping game and its features',
            keywords: ['about', 'information', 'description']
        },
        {
            id: 'how-to-play',
            title: 'How to Play',
            description: 'Instructions and rules for playing Flip Bottle',
            keywords: ['instructions', 'rules', 'how to play', 'tutorial']
        },
        {
            id: 'features',
            title: 'Game Features',
            description: 'Explore the features and capabilities of Flip Bottle',
            keywords: ['features', 'capabilities', 'gameplay']
        },
        {
            id: 'tips',
            title: 'Pro Tips',
            description: 'Professional tips and strategies for mastering Flip Bottle',
            keywords: ['tips', 'strategies', 'advice', 'pro']
        }
    ],
    
    // Meta information for each section
    getSectionMeta: function(sectionId) {
        const section = this.sections.find(s => s.id === sectionId);
        if (section) {
            return {
                title: section.title + ' - Flip Bottle',
                description: section.description,
                keywords: section.keywords.join(', ')
            };
        }
        return null;
    }
};

// Update page meta when hash changes (for search engines)
if (typeof window !== 'undefined') {
    window.addEventListener('hashchange', function() {
        const hash = window.location.hash.substring(1);
        if (hash && window.prerenderConfig) {
            const meta = window.prerenderConfig.getSectionMeta(hash);
            if (meta) {
                // Update meta tags for search engines
                document.title = meta.title;
                const descMeta = document.querySelector('meta[name="description"]');
                if (descMeta) {
                    descMeta.setAttribute('content', meta.description);
                }
            }
        }
    });
}

// Pre-render support for search engines
if (typeof window !== 'undefined' && window.location.search.includes('_escaped_fragment_')) {
    // This indicates a search engine is requesting pre-rendered content
    document.addEventListener('DOMContentLoaded', function() {
        // Ensure all content is visible for search engines
        const sections = document.querySelectorAll('section[id]');
        sections.forEach(section => {
            section.style.display = 'block';
            section.style.visibility = 'visible';
        });
        
        // Add pre-render indicator
        const indicator = document.createElement('div');
        indicator.style.cssText = 'position:fixed;top:0;left:0;background:#007AFF;color:white;padding:5px;font-size:12px;z-index:9999;';
        indicator.textContent = 'Pre-rendered for search engines';
        document.body.appendChild(indicator);
    });
} 