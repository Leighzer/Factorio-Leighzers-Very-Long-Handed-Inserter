for _,force in pairs(game.forces) do        

    if force.recipes["very-long-handed-inserter"] and force.technologies["automation-2"] then
        force.recipes["very-long-handed-inserter"].enabled = force.technologies["automation-2"].researched
    end   

end