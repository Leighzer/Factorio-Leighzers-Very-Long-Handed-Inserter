for _,force in pairs(game.forces) do    
    
    if force.recipes["very-long-handed-inserter"] then
        force.recipes["very-long-handed-inserter"].enabled = force.technologies["logistics-2"].researched
    end   

end