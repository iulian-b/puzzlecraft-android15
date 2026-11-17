.class Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;
.super Ljava/lang/Object;
.source "MRAIDCalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OldCalendarEntryCreator"
.end annotation


# instance fields
.field private final data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

.field private endDate:Ljava/util/Date;

.field private startDate:Ljava/util/Date;

.field private test:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V
    .locals 1
    .param p1, "data"    # Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->test:Z

    .line 255
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    .line 256
    return-void
.end method

.method public constructor <init>(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;Z)V
    .locals 1
    .param p1, "data"    # Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;
    .param p2, "test"    # Z

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->test:Z

    .line 260
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    .line 261
    iput-boolean p2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->test:Z

    .line 262
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->add(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    return-void
.end method

.method private add(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "calendar"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getStart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->startDate:Ljava/util/Date;

    .line 268
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getEnd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->endDate:Ljava/util/Date;

    .line 269
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->startDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid start time."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->endDate:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 273
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid end time."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils;->access$100(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V

    .line 278
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->test:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->CALENDAR:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Features;->getSupportLevel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 279
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->addUsingProvider(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_3
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->addUsingIntent(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private addReminder(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "eventId"    # J
    .param p4, "reminder"    # Ljava/lang/String;

    .prologue
    .line 322
    const-wide/16 v6, 0x0

    .line 323
    .local v6, "minutes":J
    const-string v9, "-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 324
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 325
    .local v4, "difference":J
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/fusepowered/nx/common/Utilities;->millisecondsToMinutes(J)J

    move-result-wide v6

    .line 338
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->getCalendarUriBase(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "reminders"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 339
    .local v2, "REMINDERS_URI":Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "event_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 341
    const-string v9, "method"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string v9, "minutes"

    long-to-int v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v2, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 344
    .end local v2    # "REMINDERS_URI":Landroid/net/Uri;
    .end local v4    # "difference":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 327
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/fusepowered/nx/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 328
    .local v3, "reminderDate":Ljava/util/Date;
    if-eqz v3, :cond_0

    .line 331
    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 332
    .restart local v4    # "difference":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-ltz v9, :cond_0

    .line 335
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/fusepowered/nx/common/Utilities;->millisecondsToMinutes(J)J

    move-result-wide v6

    goto :goto_0
.end method

.method private addUsingIntent(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v1, "beginTime"

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 412
    const-string v1, "endTime"

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->endDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 413
    const-string v1, "title"

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 415
    return-void
.end method

.method private addUsingProvider(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "calendar"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    .prologue
    const/4 v5, 0x0

    .line 288
    const/4 v4, 0x0

    .line 289
    .local v4, "hasReminder":Z
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getReminder()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 290
    const/4 v4, 0x1

    .line 292
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v2, "event":Landroid/content/ContentValues;
    const-string v8, "calendar_id"

    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v8, "title"

    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v9}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v8, "description"

    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v9}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getSummary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v8, "eventLocation"

    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v9}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 299
    .local v6, "startTime":J
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->endDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 301
    .local v0, "endTime":J
    const-string v8, "dtstart"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 302
    const-string v8, "dtend"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 304
    const-string v8, "allDay"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const-string v8, "eventStatus"

    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->parseStatus()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v8, "visibility"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v8, "transparency"

    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->parseTransparency()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string v8, "hasAlarm"

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->getCalendarUriBase(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "events"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 312
    .local v3, "eventsUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->uri:Landroid/net/Uri;

    .line 313
    if-eqz v4, :cond_2

    .line 314
    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v5, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v5}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getReminder()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v8, v9, v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->addReminder(Landroid/app/Activity;JLjava/lang/String;)V

    .line 316
    :cond_2
    return-void
.end method

.method private getCalendarUriBase(Landroid/app/Activity;)Ljava/lang/String;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 379
    const/4 v6, 0x0

    .line 380
    .local v6, "calendarUriBase":Ljava/lang/String;
    const-string v0, "content://calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 381
    .local v1, "calendars":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 383
    .local v7, "managedCursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 388
    :goto_0
    if-eqz v7, :cond_1

    .line 389
    const-string v6, "content://calendar/"

    .line 404
    :cond_0
    :goto_1
    return-object v6

    .line 391
    :cond_1
    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 393
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 398
    :goto_2
    if-eqz v7, :cond_0

    .line 399
    const-string v6, "content://com.android.calendar/"

    goto :goto_1

    .line 384
    :catch_0
    move-exception v0

    goto :goto_0

    .line 394
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private parseStatus()I
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 354
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "status":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 356
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 365
    :cond_1
    :goto_1
    :pswitch_0
    return v1

    .line 356
    :sswitch_0
    const-string v5, "tentative"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v1

    goto :goto_0

    :sswitch_1
    const-string v5, "confirmed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v5, "cancelled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 360
    goto :goto_1

    :pswitch_2
    move v1, v3

    .line 362
    goto :goto_1

    .line 356
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4eba25d2 -> :sswitch_0
        -0x2fedbca1 -> :sswitch_1
        0x1c682951 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseTransparency()I
    .locals 2

    .prologue
    .line 369
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getTransparency()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "transparency":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "transparent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const/4 v1, 0x1

    .line 373
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 351
    :cond_0
    return-void
.end method
