defmodule CrowWeb.ChatHeaderView do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
      <div class="w-full h-[5rem] bg-[#0f1316] border-b border-[#181d21] shadow-lg">
        <div class="flex flex-row h-full pl-[1rem] space-x-2 relative w-full justify-between">
          <div class="flex flex-col mb-auto mt-auto">
            <span class="text-[28px]">Sylus</span>
            <span class="text-[12px]">"Happyy birthday"</span>
          </div>
          <div class="w-[8rem] h-[8rem] border border-[#1A1F25] border-5 rounded-full absolute right-1 mr-[2rem] mt-[1rem]">
            <img src="/images/sylus_pf.png" class="w-full h-full rounded-full object-cover"/>
          </div>
          <div class="absolute border border-[#007700] rounded-full h-5 w-5 bg-[#005d00] mt-[10rem] right-[3rem] bottom-[-3.3rem]"/>
        </div>
      </div>
    """
  end
end
