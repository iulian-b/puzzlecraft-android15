.class public Lcom/apptracker/android/re/AppReController;
.super Ljava/lang/Object;
.source "m"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptracker/android/re/AppReController$ReConfig;
    }
.end annotation


# static fields
.field static A:I


# instance fields
.field private synthetic G:Lorg/json/JSONObject;

.field private synthetic d:Lcom/apptracker/android/re/AppReController$ReConfig;

.field private synthetic e:Landroid/app/PendingIntent;

.field private synthetic h:Lcom/apptracker/android/request/AppRequest$AppReTask;

.field protected k:Landroid/content/Context;

.field private synthetic m:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    sput v0, Lcom/apptracker/android/re/AppReController;->A:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/apptracker/android/re/AppReController;->h:Lcom/apptracker/android/request/AppRequest$AppReTask;

    .line 92
    iput-object p1, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    .line 242
    return-void
.end method

.method private synthetic B()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 255
    const-string v0, "APTr"

    const-string v1, "\t)\u000f:\u001e>+7\u000b)\u0007{\t:\u00067\u000f?"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-string v1, "+\u000b:\u001d#\t/\u000c%\t!\u0008"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 60
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->d:Lcom/apptracker/android/re/AppReController$ReConfig;

    iget v2, v0, Lcom/apptracker/android/re/AppReController$ReConfig;->m:I

    .line 11
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-class v4, Lcom/apptracker/android/re/AppReEngagement;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    iget-object v3, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v5, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/apptracker/android/re/AppReController;->e:Landroid/app/PendingIntent;

    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-string v6, ":\u0006:\u00186"

    invoke-static {v6}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/apptracker/android/re/AppReController;->m:Landroid/app/AlarmManager;

    .line 558
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->m:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/apptracker/android/re/AppReController;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 534
    if-ltz v2, :cond_0

    const-string v0, "9\u001f5\u001a&\u001a8\u00165\u0012$\u000f/\t<\u001a&\u0004+\u001d"

    const-string v6, "APTr"

    .line 530
    const/16 v7, 0xd

    invoke-virtual {v3, v7, v2}, Ljava/util/Calendar;->add(II)V

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u001a\u0006:\u00186J2\u00042\u001e2\u000b7\u0003!\u000f?JvJ\u0008\t3\u000f?\u001f7\u000f?J:\u001e{"

    invoke-static {v8}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "wJ8\u001f)\u0018>\u0004/J/\u00036\u000f{W{"

    invoke-static {v8}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v4, "APTr"

    const-string v5, "GvGvGvGvGvGvGvGvGvGvGvGvGvGvGvGvGvGvGvGv"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v4, p0, Lcom/apptracker/android/re/AppReController;->m:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/apptracker/android/re/AppReController;->e:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 279
    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    int-to-long v2, v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 543
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 497
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v0, "APTr"

    const-string v1, "+7\u000b)\u0007{\u0018>\u00074\u001c>\u000e{GvGvGvGv"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 440
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/)\u00184\u0018{\t:\u001f(\u000f?J,\u00022\u0006>J(\u000f/\u001e2\u0004<J\u001a\u0006:\u00186Js\u0003=J8\u000b(\u000frP{"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "APTr"

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private synthetic G()V
    .locals 14

    .prologue
    .line 567
    iget-object v1, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-string v2, "+\u000b:\u001d#\t/\u000c%\t!\u0008"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 461
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 418
    const-string v2, "\u0008.\u0004+\u0017+\t\'\u0004+\u000f>\u001e\'\u000b>\u001e.\u0004+\u001d"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "k"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 375
    const-wide/16 v2, 0x2710

    add-long/2addr v2, v8

    .line 311
    const-wide/16 v10, 0x19

    cmp-long v5, v6, v10

    if-lez v5, :cond_0

    .line 287
    const-string v2, "9\u001f5\u001a&\u001a8\u00165\u0012$\u000f/\t<\u001a&\u0004+\u001d"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v10, 0x0

    invoke-interface {v1, v2, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 397
    const-string v1, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "\u0015\u0005{\u00035\u001e>\u00185\u000f/F{\u000b7\u0018>\u000b?\u0013{\u001e)\u0003>\u000e{XnJ/\u00036\u000f(F{\u0019>\u001e{\u0003/J/\u0005{\u001e2\u0007>\u0018{"

    invoke-static {v10}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "("

    invoke-static {v10}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v1, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, ">2\u0007>\u0019{\u000b/\u001e>\u0007+\u001e>\u000e{W{"

    invoke-static {v10}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, v8

    .line 591
    const-string v1, "\u0008.\u0004+\u0017+\t\'\u0004+\u000f>\u001e\'\u000b>\u001e.\u0004+\u001d"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "k"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, p0

    .line 421
    .end local p0    # "this":Lcom/apptracker/android/re/AppReController;
    .local v0, "this":Lcom/apptracker/android/re/AppReController;
    :goto_0
    iget-object v1, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-string v4, ":\u0006:\u00186"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, v0, Lcom/apptracker/android/re/AppReController;->m:Landroid/app/AlarmManager;

    .line 547
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-class v5, Lcom/apptracker/android/re/AppReEngagement;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    iget-object v4, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/apptracker/android/re/AppReController;->e:Landroid/app/PendingIntent;

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/apptracker/android/re/AppReController;->m:Landroid/app/AlarmManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/apptracker/android/re/AppReController;->e:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_1
    return-void

    .line 470
    .end local v0    # "this":Lcom/apptracker/android/re/AppReController;
    .restart local p0    # "this":Lcom/apptracker/android/re/AppReController;
    :cond_0
    const-wide/16 v10, 0x5

    rem-long v10, v6, v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-lez v1, :cond_1

    .line 295
    const-wide/16 v2, 0x2710

    add-long/2addr v2, v8

    .line 363
    const-string v1, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "\u0015\u0005{\u00035\u001e>\u00185\u000f/F{\u0018>\u001e)\u0013{\u000b7\u000b)\u0007{\u00035JjZ{\u00072\u0004(Ja"

    invoke-static {v8}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "\u0008.\u0004+\u0017+\t\'\u0004+\u000f>\u001e\'\u000b>\u001e.\u0004+\u001d"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, p0

    .line 545
    .end local p0    # "this":Lcom/apptracker/android/re/AppReController;
    .restart local v0    # "this":Lcom/apptracker/android/re/AppReController;
    goto :goto_0

    .line 550
    .end local v0    # "this":Lcom/apptracker/android/re/AppReController;
    .restart local p0    # "this":Lcom/apptracker/android/re/AppReController;
    :cond_1
    const-string v1, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "$4J2\u0004/\u000f)\u0004>\u001ewJ)\u000f/\u0018\"J:\u0006:\u00186J2\u0004{[k\u0019a"

    invoke-static {v8}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v1, "\u0008.\u0004+\u0017+\t\'\u0004+\u000f>\u001e\'\u000b>\u001e.\u0004+\u001d"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 544
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, p0

    .end local p0    # "this":Lcom/apptracker/android/re/AppReController;
    .restart local v0    # "this":Lcom/apptracker/android/re/AppReController;
    goto/16 :goto_0

    .line 412
    :catch_0
    move-exception v1

    .line 266
    const-string v2, "APTr"

    invoke-static {v2, v1}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method private synthetic G(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/CharSequence;
    .param p4, "arg3"    # Ljava/lang/CharSequence;
    .param p5, "arg4"    # Ljava/lang/CharSequence;
    .param p6, "arg5"    # Landroid/app/NotificationManager;
    .param p7, "arg6"    # Landroid/app/PendingIntent;
    .param p8, "arg7"    # Landroid/widget/RemoteViews;

    .prologue
    .line 51
    const-string v0, "APTr"

    const-string v1, "\u001e)\u0003<\r>\u0018\u0015\u0005/\u0003=\u00038\u000b/\u00034\u0004{):\u00067\u000f?"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 173
    :try_start_0
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2, p2, p3, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 116
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 113
    if-eqz p8, :cond_0

    .line 136
    iput-object p7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 133
    iput-object p8, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 53
    :goto_0
    const/16 v0, 0x320

    invoke-virtual {p6, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4
    invoke-direct {p0}, Lcom/apptracker/android/re/AppReController;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-static {}, Lcom/apptracker/android/re/AppWakeLock;->release()V

    .line 121
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 161
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1, p4, p5, p7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 204
    invoke-static {}, Lcom/apptracker/android/re/AppWakeLock;->release()V

    .line 108
    const/4 v0, 0x0

    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    .line 204
    invoke-static {}, Lcom/apptracker/android/re/AppWakeLock;->release()V

    .line 83
    throw v0
.end method

.method private synthetic L()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 253
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->G:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->d:Lcom/apptracker/android/re/AppReController$ReConfig;

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-string v1, "+\u000b:\u001d#\t/\u000c%\t!\u0008"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 162
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-string v1, "\u00044\u001e2\u000c2\t:\u001e2\u00055"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "\u000b5\u000e)\u00052\u000eu\u00035\u001e>\u0004/D:\t/\u00034\u0004u\'\u001a#\u0015"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 56
    const-string v2, "\u000b5\u000e)\u00052\u000eu\u00035\u001e>\u0004/D8\u000b/\u000f<\u0005)\u0013u&\u001a?\u0015)\u0013/\t"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v2, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    move-object v0, v2

    move-object v1, v8

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 31
    :goto_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    invoke-static {v0, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 101
    const/4 v2, -0x1

    .line 197
    :try_start_2
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 251
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    :goto_2
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u001a\u000c/\u000f)J\u0012\t4\u0004{G{"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :try_start_3
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->d:Lcom/apptracker/android/re/AppReController$ReConfig;

    iget-object v3, v0, Lcom/apptracker/android/re/AppReController$ReConfig;->h:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->d:Lcom/apptracker/android/re/AppReController$ReConfig;

    iget-object v4, v0, Lcom/apptracker/android/re/AppReController$ReConfig;->h:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->d:Lcom/apptracker/android/re/AppReController$ReConfig;

    iget-object v5, v0, Lcom/apptracker/android/re/AppReController$ReConfig;->k:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 127
    iget-object v1, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/apptracker/android/re/AppReController;->G(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z

    .line 176
    :goto_3
    return-void

    .line 186
    :cond_0
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 111
    :try_start_5
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 33
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v0

    .line 223
    :try_start_6
    const-string v1, "APTr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0018\u0006:\u0019(J\u0015\u000b6\u000f{G{"

    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    :goto_4
    move-object v1, v0

    move-object v0, v2

    .line 186
    goto/16 :goto_0

    .line 38
    :catch_1
    move-exception v0

    const-string v1, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/)\u00184\u0018{\u001d2\u001e3J<\u000f/\u001e2\u0004<J2\t4\u0004{G{"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/apptracker/android/re/AppReController;->G()V

    goto :goto_3

    .line 193
    :catch_2
    move-exception v0

    goto :goto_3

    .line 25
    :catch_3
    move-exception v0

    move-object v0, v8

    goto/16 :goto_1

    :catch_4
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1

    .line 109
    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_4
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/apptracker/android/re/AppReController$ReConfig;
    .locals 8
    .param p0, "arg0"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 462
    if-eqz p0, :cond_0

    .line 504
    :try_start_0
    const-string v0, "config"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 496
    const-string v0, "6\u000f(\u0019:\r>"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 478
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 590
    new-instance v0, Lcom/apptracker/android/re/AppReController$ReConfig;

    invoke-direct {v0}, Lcom/apptracker/android/re/AppReController$ReConfig;-><init>()V

    const-string v4, "APTr"

    .line 335
    const-string v5, "\u00084\u000e\""

    const-string v6, "/\u0003/\u0006>"

    const-string v7, ")\u000f>\u0004<\u000b<\u000f6\u000f5\u001e(\u001e:\u0018/"

    invoke-static {v7}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/apptracker/android/re/AppReController$ReConfig;->m:I

    .line 533
    invoke-static {v6}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apptracker/android/re/AppReController$ReConfig;->h:Ljava/lang/String;

    .line 337
    invoke-static {v5}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apptracker/android/re/AppReController$ReConfig;->k:Ljava/lang/String;

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "8\u00055\u000c2\ra"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/apptracker/android/re/AppReController$ReConfig;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "w"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/apptracker/android/re/AppReController$ReConfig;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "w"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/apptracker/android/re/AppReController$ReConfig;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-object v0

    .line 370
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 521
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 592
    goto :goto_0
.end method

.method private synthetic m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 537
    const-string v0, "APTr"

    const-string v1, "\u00035\t)\u000f6\u000f5\u001e{\t4\u001f5\u001e>\u0018{\t:\u00067\u000f?"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-string v1, "+\u000b:\u001d#\t/\u000c%\t!\u0008"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 526
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 436
    const-string v2, "\u0008.\u0004#\u000f/\t+\u000f#\u0014$\u0004)\u0014?\u0015>\u001e8\u0004+\u001d"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 263
    const-string v2, "\u0008.\u0004#\u000f/\t+\u000f#\u0014$\u0004)\u0014?\u0015>\u001e8\u0004+\u001d"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 443
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 452
    return-void
.end method


# virtual methods
.method public loadReEngagement()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    .line 405
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->h:Lcom/apptracker/android/request/AppRequest$AppReTask;

    if-eqz v0, :cond_2

    .line 500
    const-string v0, "APTr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+?>:\u00190J(\u001e:\u001e.\u0019{G{"

    invoke-static {v4}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apptracker/android/re/AppReController;->h:Lcom/apptracker/android/request/AppRequest$AppReTask;

    invoke-virtual {v4}, Lcom/apptracker/android/request/AppRequest$AppReTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->h:Lcom/apptracker/android/request/AppRequest$AppReTask;

    invoke-virtual {v0}, Lcom/apptracker/android/request/AppRequest$AppReTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 535
    :goto_0
    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-string v3, "+\u000b:\u001d#\t/\u000c%\t!\u0008"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 392
    const-string v3, "\u001a"

    invoke-static {v3}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    new-instance v3, Lcom/apptracker/android/request/AppRequest$AppReTask;

    iget-object v4, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v0}, Lcom/apptracker/android/request/AppRequest$AppReTask;-><init>(Lcom/apptracker/android/re/AppReController;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/apptracker/android/re/AppReController;->h:Lcom/apptracker/android/request/AppRequest$AppReTask;

    .line 600
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->h:Lcom/apptracker/android/request/AppRequest$AppReTask;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/apptracker/android/request/AppRequest$AppReTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 598
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 483
    goto :goto_0

    .line 490
    :cond_1
    const-string v0, "APTr"

    const-string v1, "\u0015\u0005{\u0018>\u001b.\u000f(\u001e{\u001e4J9\u000f{\u0007:\u000e>"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public reEngagementInitialized()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->G:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->d:Lcom/apptracker/android/re/AppReController$ReConfig;

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/apptracker/android/re/AppReController;->B()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-string v1, "+\u000b:\u001d#\t/\u000c%\t!\u0008"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 151
    const-string v2, ")\u000f>\u0004<\u000b<\u000f6\u000f5\u001e:\u0006:\u00186"

    invoke-static {v2}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 148
    if-eqz v0, :cond_1

    .line 114
    const-string v0, ")\u000f>\u0004<\u000b<\u000f6\u000f5\u001e:\u0006:\u00186"

    invoke-static {v0}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    invoke-direct {p0}, Lcom/apptracker/android/re/AppReController;->L()V

    .line 82
    :cond_1
    return-void
.end method

.method public setResults(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "arg0"    # Lorg/json/JSONObject;

    .prologue
    .line 401
    if-eqz p1, :cond_0

    .line 540
    iput-object p1, p0, Lcom/apptracker/android/re/AppReController;->G:Lorg/json/JSONObject;

    .line 388
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->k:Landroid/content/Context;

    const-string v1, "+\u000b:\u001d#\t/\u000c%\t!\u0008"

    invoke-static {v1}, Lcom/apptracker/android/util/AppDeviceParamaters;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 581
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 528
    iget-object v0, p0, Lcom/apptracker/android/re/AppReController;->G:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/apptracker/android/re/AppReController;->fromJSONObject(Lorg/json/JSONObject;)Lcom/apptracker/android/re/AppReController$ReConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/apptracker/android/re/AppReController;->d:Lcom/apptracker/android/re/AppReController$ReConfig;

    .line 584
    :goto_0
    return-void

    .line 402
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apptracker/android/re/AppReController;->d:Lcom/apptracker/android/re/AppReController$ReConfig;

    goto :goto_0
.end method
