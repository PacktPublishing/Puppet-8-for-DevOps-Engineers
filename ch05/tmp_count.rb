Facter.add('tmp_count', {timeout: 10}) do 
    has_weight 100 
    confine kernel: 'Linux' 
        setcode do 
            `find /tmp -type f | wc -l`
        end 
    end
    rescue 
    nil 
    Facter.warn("Find command failed") 
    end
end 
Facter.add('tmp_count', {timeout: 10}) do 
    has_weight 50 
    confine kernel: 'Linux' 
        setcode do 
            `ls /tmp | wc -l`
        end 
    end
    rescue 
        nil 
        Facter.warn("ls command failed") 
    end
end
Facter.add('tmp_count', {timeout: 10}) do 
    has_weight 100 
    confine kernel: 'Windows' 
        setcode do 
            `powershell '(ls $env:Temp | Measure-Object -line).Lines'`
        end 
    end
    rescue 
        nil 
        Facter.warn("ls command failed") 
    end
end
Facter.add('tmp_count', {timeout: 10}) do 
    has_weight 50 
    confine kernel: 'Windows' 
        setcode do 
            `powershell 'Get-ChildItem $env:Temp | Measure-Object).Count'`
        end 
    end
    rescue 
        nil 
        Facter.warn("Get-ChildItem command failed") 
    end
end
