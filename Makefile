.PHONY: generate

generate:
	protoc -I proto proto/sso/*.proto \
		--go_out=./gen/go/ \
		--go_opt=paths=source_relative \
		--go_opt=Mproto/sso/sso.proto=ssov1 \
		--go-grpc_out=./gen/go/ \
		--go-grpc_opt=paths=source_relative \
		--go-grpc_opt=require_unimplemented_servers=false