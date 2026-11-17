.class public Lcom/fusepowered/push/FuseIntentService;
.super Lcom/fusepowered/push/FuseGCMBaseIntentService;
.source "FuseIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fusepowered/push/FuseGCMBaseIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "FuseIntentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an error  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 35
    const-string v21, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 37
    .local v19, "title":Ljava/lang/String;
    const-string v21, "text"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 38
    .local v11, "msg":Ljava/lang/String;
    const-string v21, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 40
    .local v12, "name":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_1

    .line 41
    :cond_0
    sget-object v12, Lcom/fusepowered/fuseapi/FuseAPI;->appNameDisplay:Ljava/lang/String;

    .line 44
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 45
    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "applicationName":Ljava/lang/String;
    const-string v21, "[^A-Za-z0-9]"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 49
    .local v16, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 50
    .local v5, "c":Landroid/content/Context;
    const-string v21, "GCMData"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 52
    .local v3, "appdata":Landroid/content/SharedPreferences;
    const-string v21, "iconID"

    const/16 v22, -0xa

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 53
    .local v8, "iconID":I
    const-string v21, "drawerIconID"

    const/16 v22, -0xa

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 54
    .local v6, "drawerID":I
    const-string v21, "GCMIntent"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 56
    .local v18, "str":Ljava/lang/String;
    new-instance v14, Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v14, "notibuilder":Lcom/fusepowered/push/FuseNotificationCompat$Builder;
    if-lez v8, :cond_2

    .line 60
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 61
    invoke-virtual {v14, v11}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 62
    invoke-virtual {v14, v8}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setSmallIcon(I)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 63
    invoke-virtual {v14, v12}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 64
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".fusepowered.push.FuseRecordGCMResponse"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 66
    .local v10, "intentString":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v7, "gcmRecordIntent":Landroid/content/Intent;
    const-string v21, "com.acme.URI"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 70
    .local v9, "intent":Landroid/app/PendingIntent;
    invoke-virtual {v14, v9}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 71
    if-eqz v6, :cond_2

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 74
    .local v20, "x":Landroid/graphics/Bitmap;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/fusepowered/push/FuseNotificationCompat$Builder;

    .line 77
    .end local v7    # "gcmRecordIntent":Landroid/content/Intent;
    .end local v9    # "intent":Landroid/app/PendingIntent;
    .end local v10    # "intentString":Ljava/lang/String;
    .end local v20    # "x":Landroid/graphics/Bitmap;
    :cond_2
    const-string v21, "notification_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/fusepowered/fuseapi/FuseAPI;->notificationID:Ljava/lang/String;

    .line 79
    const-string v21, "PUSH NOTIFICATION"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "This is the notification id "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/fusepowered/fuseapi/FuseAPI;->notificationID:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v21, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .line 82
    .local v15, "notifManager":Landroid/app/NotificationManager;
    invoke-virtual {v14}, Lcom/fusepowered/push/FuseNotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 84
    .local v13, "note":Landroid/app/Notification;
    const/16 v21, 0x14

    move/from16 v0, v21

    iput v0, v13, Landroid/app/Notification;->flags:I

    .line 85
    sget-object v21, Lcom/fusepowered/fuseapi/FuseAPI;->notificationID:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 86
    return-void
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "Push Notification -- on Register"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is the Registration:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p2}, Lcom/fusepowered/fuseapi/FuseAPI;->registerGCM(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method
