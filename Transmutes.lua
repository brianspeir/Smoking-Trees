﻿
local L = Panda.locale
local panel = Panda.panel.panels[4]


panel:RegisterFrame(L["Transmutes"], Panda.PanelFactory(2259,
[[35624:53777 35623:53781   0   36919   0   0 22451       21884:28566 22452:28568 21885:28567 0 0 7082        7078  7076:17560  7080:17561
  35623:53783 35622:53776   0   36931
  35622:53774 36860:53784   0   36922 41163 0 21884:28582 22457         0         23571       0 0 7076:17565 12803   0         12360
  36860:53773 35625:53775   0   36934 40248 0 22452:28584 21886         0         25867       0 0 7080:17563 12808   0          7068
  35625:53780 35627:53771   0   36925 41266 0 21885:28580 22456         0         25868       0 0  0           0     0          3577
  35627:53782 35624:53779   0   36928 41334 0   0           0           0           0         0 0  0           0     0          6037
]], nil, nil, function(self)
	local function DoubleArrow(...)
		local f = CreateFrame("Frame", nil, self.scroll)
		f:SetWidth(32) f:SetHeight(32)
		f:SetPoint(...)

		local bar = f:CreateTexture(nil, "BACKGROUND")
		bar:SetAllPoints()
		bar:SetTexture("Interface\\TalentFrame\\UI-TalentBranches")
		bar:SetTexCoord(2/8, 3/8, .5, 1)

		local left = f:CreateTexture(nil, "ARTWORK")
		left:SetWidth(32) left:SetHeight(32)
		left:SetPoint("CENTER", f, "LEFT")
		left:SetTexture("Interface\\TalentFrame\\UI-TalentArrows")
		left:SetTexCoord(1, .5, .5, 1)

		local right = f:CreateTexture(nil, "ARTWORK")
		right:SetWidth(32) right:SetHeight(32)
		right:SetPoint("CENTER", f, "RIGHT")
		right:SetTexture("Interface\\TalentFrame\\UI-TalentArrows")
		right:SetTexCoord(.5, 1, .5, 1)

		return f
	end

	local function CycleArrow(...)
		local f = CreateFrame("Frame", nil, self.scroll)
		f:SetWidth((32+5)*3+5) f:SetHeight(64)
		f:SetPoint(...)

		local bar1 = f:CreateTexture(nil, "BACKGROUND")
		bar1:SetWidth((32+5)*3+5) bar1:SetHeight(32)
		bar1:SetPoint("BOTTOM", -5, 0)
		bar1:SetTexture("Interface\\TalentFrame\\UI-TalentBranches")
		bar1:SetTexCoord(2/8, 3/8, .5, 1)

		local right = f:CreateTexture(nil, "ARTWORK")
		right:SetWidth(32) right:SetHeight(32)
		right:SetPoint("CENTER", bar1, "RIGHT")
		right:SetTexture("Interface\\TalentFrame\\UI-TalentArrows")
		right:SetTexCoord(.5, 1, .5, 1)

		local bar2 = f:CreateTexture(nil, "BACKGROUND")
		bar2:SetTexture("Interface\\TalentFrame\\UI-TalentBranches")
		bar2:SetTexCoord(2/8, 3/8, .5, 1)

		local corner1 = f:CreateTexture(nil, "ARTWORK")
		corner1:SetWidth(32) corner1:SetHeight(32)
		corner1:SetPoint("TOPLEFT", -5, 0)
		corner1:SetTexture("Interface\\TalentFrame\\UI-TalentBranches")
		corner1:SetTexCoord(5/8, 4/8, .5, 1)

		local corner2 = f:CreateTexture(nil, "ARTWORK")
		corner2:SetWidth(32) corner2:SetHeight(32)
		corner2:SetPoint("TOPRIGHT", 10, 0)
		corner2:SetTexture("Interface\\TalentFrame\\UI-TalentBranches")
		corner2:SetTexCoord(4/8, 5/8, .5, 1)

		bar2:SetPoint("TOPLEFT", corner1, "TOP")
		bar2:SetPoint("BOTTOMRIGHT", corner2, "BOTTOM")

		local down = f:CreateTexture(nil, "OVERLAY")
		down:SetWidth(32) down:SetHeight(32)
		down:SetPoint("CENTER", corner1, "BOTTOM", -4, 0)
		down:SetTexture("Interface\\TalentFrame\\UI-TalentArrows")
		down:SetTexCoord(0, .5, .5, 1)

		return f
	end

	DoubleArrow("BOTTOMLEFT", self, "TOPLEFT", 16, 0)
	DoubleArrow("BOTTOMLEFT", self, "TOPLEFT", (32+5)*6+16, -(32+18)*2)
	DoubleArrow("BOTTOMLEFT", self, "TOPLEFT", (32+5)*12+16, -(32+18)*2)
	CycleArrow("BOTTOMLEFT", self, "TOPLEFT", (32+5)*6+16-5, 0)
	CycleArrow("BOTTOMLEFT", self, "TOPLEFT", (32+5)*12+16-5, 0)
end))

