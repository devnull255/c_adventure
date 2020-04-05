extern const char *cannotBeOpened(OBJECT *obj);
extern const char *cannotBeClosed(OBJECT *obj);
extern const char *cannotBeLocked(OBJECT *obj);
extern const char *cannotBeUnlocked(OBJECT *obj);

extern const char *isAlreadyOpen(OBJECT *obj);
extern const char *isAlreadyClosed(OBJECT *obj);
extern const char *isAlreadyLocked(OBJECT *obj);
extern const char *isAlreadyUnlocked(OBJECT *obj);

extern const char *isStillOpen(OBJECT *obj);
extern const char *isStillLocked(OBJECT *obj);

extern const char *toggleBackdoor(OBJECT *obj);
extern const char *toggleBox(OBJECT *obj);
extern const char *toggleBoxLock(OBJECT *obj);

