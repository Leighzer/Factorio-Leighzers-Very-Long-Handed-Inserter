for _,force in pairs(game.forces) do        

    if force.recipes["very-long-handed-inserter"] and force.technologies["logistics-2"] then
        force.recipes["very-long-handed-inserter"].enabled = force.technologies["logistics-2"].researched
    end   

end