service_cats := cats
service_dogs := dogs
service_fishes := fishes
service_pets := pets
service_gui := gui
services := $(service_cats) $(service_dogs) $(service_fishes) $(service_pets) $(service_gui)

docker-build:
	for d in $(services); \
    	do                               \
          $(MAKE) --directory=$$d docker-build; \
        done

docker-push:
	for d in $(services); \
    	do                               \
          $(MAKE) --directory=$$d docker-push; \
        done


k8s-deploy:
	for d in $(services); \
    	do                               \
          $(MAKE) --directory=$$d k8s-deploy; \
        done