class AlphacardsController < ApplicationController
  unloadable
  skip_before_action :verify_authenticity_token

  def index
    @project = Project.find(params[:project_id])

    if Alphacards.where(projectid: params[:project_id]).count > 0
      @cards = Alphacards.where(projectid: params[:project_id])
    else
      generatecards
      @cards = Alphacards.where(projectid: params[:project_id])
    end
  end

  def updatedata
    card = Alphacards.find(params[:id]);
    card.updatedata(params[:id], params[:data])
    if card.save
      render :text => "ok"
    end
  end

  def updateposition

    card = Alphacards.find(params[:id]);
    card.updateposition(params[:id], params[:position])
    if card.save
      render :text => "ok"
    end
  end

  private

  def generatecards
    #Stakeholders

    Alphacards.create(:cardtype => "Stakeholders",
                      :position => 1,
                      :data => '{"title":"Recognized","steps":{"Stakeholder groups identified":0,"Key stakeholder groups represented":0, "Responsibilities defined":0},"number":1,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Stakeholders",
                      :position => 1,
                      :data => '{"title":"Represented","steps":{"Responsibilities agreed":0,"Representatives authorized":0, "Collaboration approach agreed":0, "Way of working supported & respected":0},"number":2,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Stakeholders",
                      :position => 1,
                      :data => '{"title":"Involved","steps":{"Representatives assist the team":0,"Timely feedback and decisions provided":0, "Changes promptly communicated":0},"number":3,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Stakeholders",
                      :position => 1,
                      :data => '{"title":"In Agreement","steps":{"Minimal expectations agreed":0,"Rep\'s happy with their involvement":0, "Rep\'s input valued":0, "Team\'s input valued":0, "Priorities clear & perspectives balanced":0},"number":4,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Stakeholders",
                      :position => 1,
                      :data => '{"title":"Satisfied for Deployment","steps":{"Stakeholder feedback provided":0,"System ready for deployment":0},"number":5,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Stakeholders",
                      :position => 1,
                      :data => '{"title":"Satisfied in Use","steps":{"Feedback on system use available":0,"System meets expectations":0},"number":6,"total":6}',
                      :projectid => params[:project_id])

    #Opportunity

    Alphacards.create(:cardtype => "Opportunity",
                      :position => 1,
                      :data => '{"title":"Identified","steps":{"Idea behind opportunity identified":0,"At least one investing stakeholder interested":0, "Other stakeholders identified":0},"number":1,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Opportunity",
                      :position => 1,
                      :data => '{"title":"Solution Needed","steps":{"Solution identified":0,"Stakeholders\' needs established":0, "Problems and root causes identified":0, "Need for a solution confirmed":0, "At least one solution proposed":0},"number":2,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Opportunity",
                      :position => 1,
                      :data => '{"title":"Value Established","steps":{"Opportunity value quantified":0,"Solution impact understood":0, "System value understood":0,"Success criteria clear":0, "Outcomes clear and quantified":0},"number":3,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Opportunity",
                      :position => 1,
                      :data => '{"title":"Viable","steps":{"Solution outlined":0,"Solution possible within constraints":0, "Risks acceptable & manageable":0, "Solution profitable":0, "Reasons to develop solution understood":0, "	Pursuit viable":0},"number":4,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Opportunity",
                      :position => 1,
                      :data => '{"title":"Addressed","steps":{"Opportunity addressed":0,"Solution worth deploying":0,"Stakeholders satisfied":0},"number":5,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Opportunity",
                      :position => 1,
                      :data => '{"title":"Benefit Accrued","steps":{"Solution accrues benefits":0,"ROI acceptable":0},"number":6,"total":6}',
                      :projectid => params[:project_id])

    #Software System

    Alphacards.create(:cardtype => "Software System",
                      :position => 1,
                      :data => '{"title":"Architecture Selected","steps":{"Architecture selection criteria agreed":0,"HW platforms identified":0, "Technologies selected":0,"System boundary known":0, "Decisions on system organization made":0,"Buy, build, reuse decisions made":0,"Key technical risks agreed to":0},"number":1,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Software System",
                      :position => 1,
                      :data => '{"title":"Demonstrable","steps":{"Solution identified":0,"Stakeholders\' needs established":0, "Problems and root causes identified":0, "Need for a solution confirmed":0, "At least one solution proposed":0},"number":2,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Software System",
                      :position => 1,
                      :data => '{"title":"Usable","steps":{"System can be operated":0,"System functionality tested":0, "System performance acceptable":0,"Defect levels acceptable":0, "System fully documented":0,"Release content known":0, "Added value clear":0},"number":3,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Software System",
                      :position => 1,
                      :data => '{"title":"Ready","steps":{"User documentation available":0,"System accepted as fit-for-purpose":0, "Stakeholders want the system":0, "Operational support in place":0},"number":4,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Software System",
                      :position => 1,
                      :data => '{"title":"Operational","steps":{"System available for use":0,"System live":0,"Agreed service levels supported":0},"number":5,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Software System",
                      :position => 1,
                      :data => '{"title":"Retired","steps":{"Replaced or discontinued":0,"No longer supported":0,"No authorized users":0,"Updates stopped":0},"number":6,"total":6}',
                      :projectid => params[:project_id])

    #Work

    Alphacards.create(:cardtype => "Work",
                      :position => 1,
                      :data => '{"title":"Initiated","steps":{"Required result clear":0,"Constraints clear":0, "Funding stakeholders known":0,"Initiator identified":0, "Accepting stakeholders known":0,"Source of funding clear":0,"Priority clear":0},"number":1,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Work",
                      :position => 1,
                      :data => '{"title":"Prepared","steps":{"Commitment made":0,"Cost and effort estimated":0, "Resource availability understood":0, "Risk exposure understood":0, "Acceptance criteria established":0, "Sufficiently broken down to start":0, "Tasks identified and prioritized":0, "Credible plan in place":0, "Funding in place":0, "At least one team member ready":0, "Integration points defined":0},"number":2,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Work",
                      :position => 1,
                      :data => '{"title":"Started","steps":{"Development started":0,"Progress monitored":0, "Definition of done in place":0,"Tasks being progressed":0},"number":3,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Work",
                      :position => 1,
                      :data => '{"title":"Under Control","steps":{"Tasks being completed":0,"Unplanned work under control":0, "Risks under control":0, "Estimates revised to reflect performance":0,"Progress measured":0, "Re-work under control":0, "Commitments consistently met":0},"number":4,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Work",
                      :position => 1,
                      :data => '{"title":"Concluded","steps":{"Only admin tasks left":0,"Results achieved":0,"Resulting system accepted":0},"number":5,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Work",
                      :position => 1,
                      :data => '{"title":"Closed","steps":{"Lessons learned":0,"Metrics available":0,"Everything archived":0,"Budget reconciled & closed":0,"Team released":0,"No outstanding, uncompleted tasks":0},"number":6,"total":6}',
                      :projectid => params[:project_id])


    #Way of Working
    Alphacards.create(:cardtype => "Way of Working",
                      :position => 1,
                      :data => '{"title":"Principles Established","steps":{"Team actively support principles":0,"Stakeholders agree with principles":0, "Tool needs agreed":0,"Approach recommended":0, "Operational context understood":0,"Practice & tool constraints known":0},"number":1,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Way of Working",
                      :position => 1,
                      :data => '{"title":"Foundation Established","steps":{"Key practices & tools selected":0,"Practices needed to start work agreed":0, "Non-negotiable practices & tools identified":0, "Gaps between available and needed way of working understood":0, "Gaps in capability understood":0, "Integrated way of working available":0},"number":2,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Way of Working",
                      :position => 1,
                      :data => '{"title":"In Use","steps":{"Practices & tools in use":0,"Regularly inspected":0, "Adapted to context":0,"Supported by team":0, "Feedback mechanisms in place":0,"Practices & tools support collaboration":0},"number":3,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Way of Working",
                      :position => 1,
                      :data => '{"title":"In Place","steps":{"Used by whole team":0,"Accessible to whole team":0, "Inspected and adapted by whole team":0},"number":4,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Way of Working",
                      :position => 1,
                      :data => '{"title":"Working Well","steps":{"Predictable progress being made":0,"Practices naturally applied":0,"Tools naturally support way-of-working":0,"Continually tuned":0},"number":5,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Way of Working",
                      :position => 1,
                      :data => '{"title":"Retired","steps":{"No longer in use":0,"Lessons learned shared":0},"number":6,"total":6}',
                      :projectid => params[:project_id])

    #Team

    Alphacards.create(:cardtype => "Team",
                      :position => 1,
                      :data => '{"title":"Seeded","steps":{"Mission defined":0,"Constraints known and defined":0, "Growth mechanisms in place":0,"Composition defined":0, "Responsibilities outlined":0,"Required commitment level clear":0, "Required competencies identified":0,"Size determined":0, "Governance rules defined":0,"Leadership model selected":0},"number":1,"total":5}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Team",
                      :position => 1,
                      :data => '{"title":"Formed","steps":{"Enough members recruited":0,"Roles understood":0, "How to work understood":0, "Members introduced":0, "Individual responsibilities accepted and aligned to competencies":0, "Members accepting work":0, "External collaborators identified":0, "Communication mechanisms defined":0, "Members commit to team":0},"number":2,"total":5}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Team",
                      :position => 1,
                      :data => '{"title":"Collaborating","steps":{"Works as one unit":0,"Communication open and honest":0, "Focused on mission":0,"Members know each other":0},"number":3,"total":5}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Team",
                      :position => 1,
                      :data => '{"title":"Performing","steps":{"Consistently meeting commitments":0,"Continuously adapting to change":0, "Addresses problems":0,"Rework and backtracking minimized":0, "Waste continuously eliminated":0},"number":4,"total":5}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Team",
                      :position => 1,
                      :data => '{"title":"Adjourned","steps":{"Responsibilities fulfilled":0,"Members available to other teams":0,"Mission concluded":0},"number":5,"total":5}',
                      :projectid => params[:project_id])

    #Requirements
    Alphacards.create(:cardtype => "Requirements",
                      :position => 1,
                      :data => '{"title":"Conceived","steps":{"Stakeholders agree system is to be produced":0,"Users identified":0, "Funding stakeholders identified":0,"Opportunity clear":0},"number":1,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Requirements",
                      :position => 1,
                      :data => '{"title":"Bounded","steps":{"Development stakeholders identified":0,"System purpose agreed":0, "System success clear":0, "Shared solution understanding exists":0, "Requirement\'s format agreed":0, "Requirements management in place":0, "Prioritization scheme clear":0, "Constraints identified & considered":0, "Assumptions clear":0},"number":2,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Requirements",
                      :position => 1,
                      :data => '{"title":"Coherent","steps":{"Requirements shared":0,"Requirements\' origin clear":0, "Rationale clear":0,"Conflicts addressed":0, "Essential characteristics clear":0,"Key usage scenarios explained":0,"Priorities clear":0, "Impact understood":0,"Team knows & agrees on what to deliver":0},"number":3,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Requirements",
                      :position => 1,
                      :data => '{"title":"Acceptable","steps":{"Acceptable solution described":0,"Change under control":0, "Value to be realized clear":0,"Clear how opportunity addressed":0, "Testable":0},"number":4,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Requirements",
                      :position => 1,
                      :data => '{"title":"Addressed","steps":{"Enough addressed to be acceptable":0,"Requirements and system match":0,"Value realized clear":0,"System worth making operational":0},"number":5,"total":6}',
                      :projectid => params[:project_id])
    Alphacards.create(:cardtype => "Requirements",
                      :position => 1,
                      :data => '{"title":"Fulfilled","steps":{"Stakeholders accept requirements":0,"No hindering requirements":0,"Requirements fully satisfied":0},"number":6,"total":6}',
                      :projectid => params[:project_id])

  end
end
