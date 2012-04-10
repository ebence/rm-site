module ApplicationHelper
    def obscure_email(email, classes = "")
      mbak = email.split(/[.@]/).reverse.join("__%%_")
      "<script>
        var mbak = '#{mbak}';
        mbak = mbak.split('__%%_').reverse();
        mbak = mbak[0] + '@' + mbak.slice(1).join('.');
        mbak = '<a href=\"mailto:' + mbak + '\" class=\"#{classes}\">' + mbak
  + '</a>';
        document.write(mbak);
      </script>".html_safe
    end
end
