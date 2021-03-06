// ===============================================================
// Copyright(c) Institute of Software, Chinese Academy of Sciences
// ===============================================================
// Author : Zhen Tang <tangzhen12@otcaix.iscas.ac.cn>
// Date   : 2016/11/21

package once.cloud.deploy.agent.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import once.cloud.deploy.agent.api.model.CommandResultModel;
import once.cloud.deploy.agent.api.model.UploadModel;
import once.cloud.deploy.agent.helper.CommandResult;
import once.cloud.deploy.agent.helper.FileHelper;
import once.cloud.deploy.agent.helper.ProcessHelper;

@Controller
public class AgentController {
	private ProcessHelper processHelper;
	private FileHelper fileHelper;

	private ProcessHelper getProcessHelper() {
		return processHelper;
	}

	@Autowired
	private void setProcessHelper(ProcessHelper processHelper) {
		this.processHelper = processHelper;
	}

	private FileHelper getFileHelper() {
		return fileHelper;
	}

	@Autowired
	private void setFileHelper(FileHelper fileHelper) {
		this.fileHelper = fileHelper;
	}

	@RequestMapping(value = "/Api/Agent/Run", method = { RequestMethod.POST })
	@ResponseBody
	public CommandResultModel run(@RequestHeader("x-ocme-agent-command") String command) {
		CommandResult commandResult = this.getProcessHelper().run(command);
		CommandResultModel ret = new CommandResultModel();
		ret.setExitValue(commandResult.getExitValue());
		ret.setStandardError(commandResult.getStandardError());
		ret.setStandardOutput(commandResult.getStandardOutput());
		return ret;
	}

	@RequestMapping(value = "/Api/Agent/Upload", method = { RequestMethod.POST }, consumes = "application/json")
	@ResponseBody
	public boolean upload(@RequestBody UploadModel uploadModel) {
		return this.getFileHelper().writeTextFile(uploadModel.getLocation(), uploadModel.getContent());
	}
}
