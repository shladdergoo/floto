init: check-for-env-and-profile
	rm -rf ./.terraform
	terraform init -backend=true -backend-config=./environment/$(ENV)/backend.tf

check-for-env-and-profile: check-var-ENV check-var-AWS_PROFILE

check-var-%:
	@ if [ "${${*}}" = "" ]; then echo "environment variable '$*' not set"; exit 1; fi

plan: init
	@echo "*******************************************"
	@echo "* ACTION:		PLAN"
	@echo "* ENV:			$(ENV)"
	@echo "* PROFILE:		$(AWS_PROFILE)"
	@echo "*******************************************"
	terraform plan --var-file=./environment/$(ENV)/variables.tf

apply: init
	@echo "*******************************************"
	@echo "* ACTION:		APPLY"
	@echo "* ENV:			$(ENV)"
	@echo "* PROFILE		$(AWS_PROFILE)"
	@echo "*******************************************"
	terraform apply --var-file=./environment/$(ENV)/variables.tf

destroy: init
	@echo "*******************************************"
	@echo "* ACTION:		DESTROY"
	@echo "* ENV:			$(ENV)"
	@echo "* PROFILE		$(AWS_PROFILE)"
	@echo "*******************************************"
	terraform destroy --var-file=./environment/$(ENV)/variables.tf
